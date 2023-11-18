#lang sicp

; Exercise 1.3: Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.

(define (square n) (* n n))

(define (sum-squares n m) (+ (square n) (square m)))

(define (e-13 a b c)
  (cond ((and (<= a b) (<= a c)) (sum-squares b c))
        ((and (<= b a) (<= b c)) (sum-squares a c))
        ((and (<= c a) (<= c b)) (sum-squares a b))))

; Exercise 1.8:
; Newton's method for cube root
; Takeaway: introducing procedures such as good-enugh? before
; definition is a much clearer way to write a program. When
; introducing small helper functions first it's not clear why
; they are needed

(define (crt-iter guess x)
  (if (good-enough? guess x)
      guess
      (crt-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.001))

(define (crt x)
  (crt-iter 1.0 x))

