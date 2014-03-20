#lang racket


(require "factory.rkt")

(let ([obj (make-obj 'foo)])
  (call-foo obj (lambda () 4)))
