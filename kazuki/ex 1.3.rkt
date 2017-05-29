#lang racket
(define (ex1.3 a b c) 
  (define (>= x y) (not (< x y)))
    (define (squareplus x y) (+(* x x)(* y y)))
	(cond ((and (>= b a)(>= c a)) (squareplus b c))
 		  ((and (>= a b)(>= c b)) (squareplus c a))
 		  ((and (>= a c)(>= b c)) (squareplus a b))))