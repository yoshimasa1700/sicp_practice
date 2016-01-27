#lang racket

(define (double x) (+ x x)) 
(define (halve x) (/ x 2)) 

(define (even? n)
(= (remainder n 2) 0))

(define (* a b)
	(cond ((= b 0) 0) 
              ((even? b) (double (* a (halve b)))) 
	      (else (+ a (* a (- b 1))))
	)
)

(* 1 1)
(* 1 0)
(* 0 1)
(* 0 0)
(* 2 3)
(* 500 400)