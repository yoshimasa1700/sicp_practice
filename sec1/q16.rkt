#lang racket

(define (square x)
	(* x x)
)

(define (fast-expt-itr b n a)
	(if (= n 1)
	    a
	    (fast-expt-itr b (/ n 2) (* (square b) a))
	)
)

(define (even? n)
(= (remainder n 2) 0))

(define (fast-expt-iterative b n)
	(cond ((= n 0) 1)
	      ((even? n) (fast-expt-itr b n 1))
	      (else (fast-expt-itr b n 1))
	))

(fast-expt-iterative 2 4)