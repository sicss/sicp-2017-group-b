#lang racket
(define (f x) 
  (cond ((< x 3) x)
	    (else (+ (f (- x 1)) (* 2 (f (- x 2))) (* 3 (f (- x 3)))))))