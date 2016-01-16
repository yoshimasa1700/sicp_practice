#lang racket

(define (f_recursive n) (if (< n 3)
	n
	(+ (f_recursive (- n 1)) (* 2 (f_recursive (- n 2))) (* 3 (f_recursive ( - n 3))))
	)
)
(f_recursive 5)

(define (f_iterative n) (if (< n 3)
	n
	(f_itr 2 1 0 n)
	)
)

(define (f_itr a b c count)
	(if (< count 3)
	    a
	    (f_itr (+ a (* 2 b) (* 3 c)) a b (- count 1))
))

(f_iterative 5)

