#lang racket


(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average (/ x guess) guess))

(define (good-enough? guess preguess)
	(<
		(abs (/ (- guess preguess) guess))
		0.0001)
)

(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
	(else else-clause))
)

(define (sqrt-iter guess preguess x)
	(if (good-enough? guess preguess)
		guess
		(sqrt-iter (improve guess x) guess x))
)

(define (sqrt x) (sqrt-iter 1.0 100.0 x))

(sqrt 2)
(sqrt 200000000000000000000000000000000)
(sqrt 0.0000000002)
