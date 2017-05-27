#lang racket
(define (cons a b) (* (expt 2 a) (expt 3 b)))

(define (howmany x i n)
  (if (> (remainder x n) 0) i
      (howmany (/ x n) (+ i 1) n)))

(define (car x) (howmany x 0 2))

(define (cdr x) (howmany x 0 3))