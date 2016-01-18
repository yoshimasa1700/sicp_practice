#lang racket

(define (pascal_triangle r c)
	(cond
		((or (< r 0) (< c 0)) 0)
		((and (= r 0) (= c 0)) 1)
		(else (+ (pascal_triangle (- r 1) (- c 1)) (pascal_triangle (- r 1) c)))
	)
)



(pascal_triangle 0 0)
(pascal_triangle 4 2)
(pascal_triangle 1 1)
(pascal_triangle 2 1)