#lang racket
(define (fast-expt2 a n) (expt a 1 n))

(define (expt a m n)
  (cond ((= m n) a)
        ((even?))