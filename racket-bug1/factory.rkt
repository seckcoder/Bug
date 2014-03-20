#lang racket

(require "foo.rkt")
(provide (all-defined-out))

(define (make-obj type)
  (case type
    [(foo) (make-foo-obj)]))

(define (call-foo obj k)
  ; Note: The program will work with the following line uncommented...
  ; (print "hello world")(newline)
  ((obj 'foo) k))

(module+ test
  (let ([obj (make-obj 'foo)])
    ((obj 'foo) (lambda () 3))))
