#lang sicp

(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))


(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (fib n)
  (cond((= n 0) 0)
       ((= n 1) 1)
       (else (+ (fib (- n 1)) (fib (- n 2))))))


; Exercise 1.11: A function f is defined by the rule that
; f ( n ) = n if n < 3 and
; f ( n ) = f ( n − 1 ) + 2 f ( n − 2 ) + 3 f ( n − 3 ) if n ≥ 3 .
; Write a procedure that computes f by means of a recursive process.
; Write a procedure that computes f by means of an iterative process.

(define (f n))

(define (f-iter n))

