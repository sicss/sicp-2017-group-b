#lang racket
(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

;(car (cons x y))
;(car (λ (m) (m x y)))
;((λ (m) (m x y)) (λ (p q) p))
;((λ (p q) p) x y)
;x

(define (cdr z)
  (z (lambda (p q) q)))