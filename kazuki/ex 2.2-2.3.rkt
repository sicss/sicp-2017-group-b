#lang racket
;2.2
(define (make-segment  a b) (cons a b))
(define (start-segment x) (car x))
(define (end-segment x) (cdr x))

(define (make-point  x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (midpoint-segment l)
  (make-point (/ (+ (x-point (start-segment l)) (x-point (end-segment l))) 2)
              (/ (+ (y-point (start-segment l)) (y-point (end-segment l))) 2)))

;2.3
;this needs two point
(define (make-rectangle p1 p2)
  (if (or (= (x-point p1) (x-point p2)) (= (y-point p1) (y-point p2))) error
      (cons p1 p2)))

(define (height rectangle) )