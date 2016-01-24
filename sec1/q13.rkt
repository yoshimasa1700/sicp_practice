#lang racket

(define phi (/ (+ 1 (sqrt 5)) 2))

(define (^ base exponential)

	(define (temp^ exponential acc)
		(if (= exponential 0)
		    acc
		    (temp^ (- exponential 1) (* acc base))
		) 
	)

	(temp^ exponential 1)
)

(define (f n)
   (/ (^ phi n) (sqrt 5)))

(define (fib n)
	(cond
		((< n 1) 0)
		((= n 1) 1)
	    	((+ (fib (- n 1)) (fib (- n 2))))
	)
)

(f 0)
(fib 0)

(f 1)
(fib 1)

(f 2)
(fib 2)

(f 3)
(fib 3)

(f 4)
(fib 4)

(f 5)
(fib 5)

(f 6)
(fib 6)

(f 7)
(fib 7)

(f 8)
(fib 8)

(f 9)
(fib 9)