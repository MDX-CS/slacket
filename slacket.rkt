#lang racket

(require "../racket-slack-api/slack-api/main.rkt")

(display "Please enter authentication token: ")
(define token (read-line (current-input-port)))

(define-values (conn res) (rtm-start token))
(define self (hash-ref res 'self))
(define channels (hash-ref res 'channels))
(define master-id "U1K5Y4HP1")

(exit-handler (lambda (x) (rtm-close! conn)))

(define (handle-message channel user text)
  (cond
    [(string-contains? text (format "<@~a>" (hash-ref self 'id)))
     (cond
       [(not (equal? user master-id)) (slack-chat-postMessage token channel "NOT YOU" #:as_user "true")]
       [(string-contains? text "ping") (slack-chat-postMessage token channel "pong" #:as_user "true")]
       [(string-contains? text "sleep time") (slack-chat-postMessage token channel ":zzz:" #:as_user "true") (exit)]
       )]
    )
  )

(define (handle-event msg)
  (cond
    [(equal? (hash-ref msg 'type) "message") (handle-message (hash-ref msg 'channel) (hash-ref msg 'user) (hash-ref msg 'text))]
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