#lang racket

(require "../racket-slack-api/slack-api/main.rkt")
(require racket/date)

(display "Please enter authentication token: ")
(define token (read-line (current-input-port)))

(define-values (conn res) (rtm-start token))
(define self (hash-ref res 'self))
(define channels (hash-ref res 'channels))
(define master-id "U1K5Y4HP1")

(exit-handler (lambda (x) (rtm-close! conn)))

; Algorithm devised by Gauss
(define (compute-easter year)
  (let* ([a (modulo year 19)]
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
      [(and (equal? d 29) (equal? e 6)) "19 April"]
      [(and (equal? d 28) (equal? e 6) (< (modulo (+ (* M 11) 11) 30) 19)) "18 April"]
      [(< (+ d e) 10) (format "~a March" (+ d e 22))]
      [else (format "~a April" (- (+ d e) 9))]
      )
    )
  )

(define (find-cantata t)
  (printf "Finding cantata [~a]~n" t)
  )

(define (do-cantata date)
  (let ([day (date-day date)]
        [month (date-month date)]
        [year (date-year date)]
        [weekday (date-week-day date)])
  (cond
    [(and (= month 12) (>= day 25) (<= day 27)) (find-cantata (format "Am ~d. Weihnachtstag" (- day 24)))]
  ))
  )                                                                                   

(define (handle-message channel user text)
  (cond
    [(string-contains? text (format "<@~a>" (hash-ref self 'id)))
     (cond
       [(not (equal? user master-id)) (slack-chat-postMessage token channel "NOT YOU" #:as_user "true")]
       [(string-contains? text "ping") (slack-chat-postMessage token channel "pong" #:as_user "true")]
       [(string-contains? text "cantata") (do-cantata (current-date))]
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