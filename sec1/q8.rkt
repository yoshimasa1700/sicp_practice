#lang racket


(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (improve guess x) (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess preguess)
	(<
		(abs (/ (- guess preguess) guess))
		0.0001)
)

(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
	(else else-clause))
)

(define (cubic-iter guess preguess x)
	(if (good-enough? guess preguess)
		guess
		(cubic-iter (improve guess x) guess x))
)

(define (cubic x) (cubic-iter 1.0 0.0 x))

(average 1 2)
(square 2)
(improve 1 1)
(cubic 8)
(cubic 200000000000000000000000000000000)
(cubic 0.0000000002)
