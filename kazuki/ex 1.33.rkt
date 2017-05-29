#lang racket
(define (filter-accumulate combiner null-value term a next b filter?)
  (cond ((> a b) null-value)
        ((filter?)(combiner (term a) (filter-accumulate combiner null-value term (next a) next b filter?)))
        (else (filter-accumulate combiner null-value term (next a) next b filter?))))

(define (filter-accumulate2 combiner null-value term a next b filter?)
  (define (iter a result)
    (cond ((> a b) result)
          ((filter?) (iter (next a) (combiner result a)))
          (else (iter (next a) result))))
  (iter a null-value))