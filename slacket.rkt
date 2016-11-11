#lang racket

(require "racket-slack-api/slack-api/main.rkt")
(require racket/date)
(require db)

(display "Please enter authentication token: ")
(define token (read-line (current-input-port)))

(define-values (conn res) (rtm-start token))
(define self (hash-ref res 'self))
(define channels (hash-ref res 'channels))
(define master-id "U1K5Y4HP1")

(define pgc (postgresql-connect #:user "jaapb" #:database "slacket"))
(define find-bwv (prepare pgc "SELECT bwv FROM cantata_day WHERE day = $1"))
(define find-name (prepare pgc "SELECT name FROM cantatas WHERE bwv = $1"))

(exit-handler (lambda (x) (rtm-close! conn)))

(define (is-leap-year? year)
  (cond
    [(= (modulo year 400) 0) #t]
    [(= (modulo year 100) 0) #f]
    [(= (modulo year 4) 0) #t]
    [else #f]
    )
  )

(define (year-day-of day month year)
  (let ([month-lengths (vector 31 (if (is-leap-year? year) 29 28) 31 30 31 30 31 31 30 31 30 31)])
    (+ (for/sum ([i (- month 1)]) (vector-ref month-lengths i)) (- day 1))
    )
  )

; Algorithm devised by Gauss
(define (compute-easter year)
  (let* ([march22 (if (is-leap-year? year) 81 80)]
         [a (modulo year 19)]
         [b (modulo year 4)]
         [c (modulo year 7)]
         [k (floor (/ year 100))]
         [p (floor (/ (+ 13 (* 8 k)) 25))]
         [q (floor (/ k 4))]
         [M (modulo (- 15 (+ p (- k q))) 30)]
         [N (modulo (+ 4 (- k q)) 7)]
         [d (modulo (+ (* 19 a) M) 30)]
         [e (modulo (+ (* 2 b) (* 4 c) (* 6 d) N) 7)])
    (cond
      [(and (equal? d 29) (equal? e 6)) (+ march22 28)] ; 19 Apr
      [(and (equal? d 28) (equal? e 6) (< (modulo (+ (* M 11) 11) 30) 19)) (+ march22 27)] ; 18 Apr
      [else (+ d e march22)]
      )
    )
  )

(define (find-cantata titles)
  (cond
    [(list? titles) (flatten (map (λ (t) (query-list pgc find-bwv t)) titles))]
    [#t (query-list pgc find-bwv titles)]
    )
  )

(define (do-sunday-cantata yday eday leap-year)
  (cond
    [(> yday (if leap-year 359 358)) (find-cantata "Am Sonntag nach Weihnachten")]
    [(< yday 5) (find-cantata (list "Am Sonntag nach Neujahr" "Am Sonntag nach dem Fest der Beschneidung"))]
    [(>= yday (if leap-year 331 330)) (find-cantata (format "Am ~a. Advent" (quotient (- yday (if leap-year 324 323)) 7)))]
    [(= (- eday yday) 63) (find-cantata "Am Sonntag Septuagesimae")]
    [(= (- eday yday) 56) (find-cantata "Am Sonntag Sexagesimae")]
    [(= (- eday yday) 49) (find-cantata "Am Sonntag Estomihi")]
    [(= (- eday yday) 42) (find-cantata "Am Sonntag Invocavit")]
    [(= (- eday yday) 35) (find-cantata "Am Sonntag Reminiscere")]
    [(= (- eday yday) 28) (find-cantata "Am Sonntag Oculi")]
    [(= (- eday yday) 21) (find-cantata "Am Sonntag Laetare")]
    [(= (- eday yday) 14) (find-cantata "Am Sonntag Judica")]
    [(= (- eday yday) 7) (find-cantata "Am Palmensonntag")]
    [(= (- yday eday) 7) (find-cantata "Am Sonntag Quasimodogeniti")]
    [(= (- yday eday) 14) (find-cantata "Am Sonntag Misericordias Domini")]
    [(= (- yday eday) 21) (find-cantata "Am Sonntag Jubilate")]
    [(= (- yday eday) 28) (find-cantata "Am Sonntag Cantate")]
    [(= (- yday eday) 35) (find-cantata "Am Sonntag Rogate")]
    [(= (- yday eday) 42) (find-cantata "Am Sonntag Exaudi")]
    ; 49 is Pentecost, already covered
    [(= (- yday eday) 56) (find-cantata "Am Sonntag Trinitatis")]
    [(> eday yday) (find-cantata (format "Am ~a. Sonntag nach Epiphanias" (quotient (+ yday 1) 7)))]
    [(> yday eday) (find-cantata (format "Am ~a. Sonntag nach Trinitatis" (quotient (- yday eday 56) 7)))]
    )
  )

(define (do-cantata yday wday year)
  (let
      ([eday (compute-easter year)]
       [leap-year (is-leap-year? year)]
       )
    (cond
      [(= yday 0) (find-cantata (list "Am Neujahrstag" "Am Feste der Beschneidung Christi"))] ; 1 Jan
      [(= yday 5) (find-cantata "Am Feste Epiphanias")] ; 6 Jan
      [(= yday 32) (find-cantata "Am Feste Mariae Reinigung")] ; 2 Feb
      [(= yday (if leap-year 84 83)) (find-cantata "Zu Mariae Verkundigung")] ; 25 Mar
      [(= yday (if leap-year 175 174)) (find-cantata "Am Feste Johannis des Taeufers")] ; 24 Jun
      [(= yday (if leap-year 183 182)) (find-cantata "Am Feste Mariae Heimsuchung")] ; 2 Jul
      [(= yday (if leap-year 272 271)) (find-cantata "Am Michaelisfest")] ; 29 Sep
      [(= yday (if leap-year 304 303)) (find-cantata "Am Reformationsfest")] ; 31 Oct
      [(and (>= yday eday) (<= yday (+ eday 2))) (find-cantata (format "Am ~a. Ostertag" (+ (- yday eday) 1)))]
      [(= yday (+ eday 40)) (find-cantata "Am Feste der Himmelfahrt Christi")]
      [(and (>= yday (+ eday 49)) (<= yday (+ eday 51))) (find-cantata (format "Am ~a. Pfingsttag" (- (- yday eday) 48)))]
      [(and (>= yday (if leap-year 359 358)) (<= yday (if leap-year 361 360))) (find-cantata (format "Am ~a. Weihnachtstag" (- yday (if leap-year 358 357))))]
      [(= wday 0) (do-sunday-cantata yday eday leap-year)]
      [else (do-sunday-cantata (+ yday (- 7 wday)) eday leap-year)]
      )
    )
  )

(define (handle-message channel user text)
  (cond
    [(string-contains? text (format "<@~a>" (hash-ref self 'id)))
     (cond
       [(not (equal? user master-id)) (slack-chat-postMessage token channel "NOT YOU" #:as_user "true")]
       [(string-contains? text "ping") (slack-chat-postMessage token channel "pong" #:as_user "true")]
       [(string-contains? text "cantata") (let* ([c (current-date)]
                                                [bwvs (do-cantata (date-year-day c) (date-week-day c) (date-year c))]
                                                [bwv (list-ref bwvs (random (length bwvs)))]
                                                [name (query-value pgc find-name bwv)])
                                            (slack-chat-postMessage token channel (format "For today, we recommend '~v' (BWV ~v)" name bwv) #:as_user "true"))]
       [(string-contains? text "sleep time") (slack-chat-postMessage token channel ":zzz:" #:as_user "true") (exit)]
       )]
    )
  )

(define (handle-event msg)
  (cond
    [(and (equal? (hash-ref msg 'type) "message") (not (hash-has-key? msg 'subtype)))
     (handle-message (hash-ref msg 'channel) (hash-ref msg 'user) (hash-ref msg 'text))]
    )
  )

(define (main)
  (let ([msg (rtm-read conn)])
    (printf "~a~n" msg)
    (handle-event msg)
    )
  (main)
  )

(main)
