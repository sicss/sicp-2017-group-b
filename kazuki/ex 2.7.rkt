#lang racket
;2,7
(define (make-interval a b) (cons a b))

(define (upper-bound x) (cdr x))

(define (lower-bound x) (car x))


;2.8
(define (sub-interval x y)
  (make-interval (min (- (upper-bound x) (lower-bound y)) (- (upper-bound x) (lower-bound y)))
                 ()))