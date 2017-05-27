#lang racket
;1.39
(define (cont-frac-b2 n d k)
  (define (cont-f n d k result)
    (if (< k 2) result
        (cont-f n d (- k 1) (/ (n (- k 1)) (- (d (- k 1)) result))))) ;Pile up from the bottom
  (cont-f n d k (/ (n k) (d k))))

(define (tan-d i) (- (* 2 i) 1))

(define (tan-cf x k)
  (define (tan-n i)
  (if (= i 1) x
      (* x x)))
  (cont-frac-b2 tan-n tan-d k))

;(define pi 3.141592)