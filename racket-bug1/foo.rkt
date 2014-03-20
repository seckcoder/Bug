#lang racket
(provide (all-defined-out))

(define (make-foo-obj)
  (define (foo k)
    (k))
  (define (self m)
    (case m
      [(foo) foo]))
  self
  )

(module+ test
  (let ([obj (make-foo-obj)])
    ((obj 'foo) (lambda () 3))))
