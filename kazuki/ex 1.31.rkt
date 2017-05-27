#lang racket
(define (product1 term a next b)
  (if (> a b) 1
      (* (term a) (product term (next a) next b))))

(define (product2 term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

(define (factional n ))