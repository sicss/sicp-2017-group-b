#lang racket
(define (sum term a next b counter n)
  (if (> a b)
      0
      (+ ((yk term counter n) a)
         (sum term (next a) next b (+ 1 counter) n))))

(define (yk f counter n)
    (cond ((or (= counter 0)(= counter n)) (lambda (x) (f x)))
          ((even? counter) (lambda (x) (* 2 (f x))))
          (else (lambda (x) (* 4 (f x))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (integral f a b dx counter n)
  (define (add-dx x) (+ x dx))
  (* (sum f a add-dx b counter n)
     (/ dx 3)))

(define (simpson f a b n)
    (integral f a b (/ (- b a) n) 0 n))

(define (cube x) (* (* x x) x))

