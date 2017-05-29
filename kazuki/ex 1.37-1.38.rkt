#lang racket
(define (cont-frac-a n d k)
  (define (cont-f n d i k)
    (if (> i k) 0
        (/ (n i) (+ (d i) (cont-f n d (+ i 1) k)))))
  (cont-f n d 1 k))

;if you want the value which precision is 4 digits, k=11 needed

(define (cont-frac-b n d k)
  (define (cont-f n d k result)
    (if (< k 2) result
        (cont-f n d (- k 1) (/ (n (- k 1)) (+ (d (- k 1)) result))))) ;Pile up from the bottom
  (cont-f n d k (/ (n k) (d k))))

;1.38
(define (d i)
  (if (= (remainder i 3) 2) (* 2 (/ (+ i 1) 3))
      1))