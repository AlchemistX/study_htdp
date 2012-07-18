#lang racket

(require rackunit)
(require rackunit/text-ui)

; quadratic-discriminant: Number -> Number
; 
(define (quadratic-discriminant a b c)
  (- (* b b) (* 4 a c)))

; how-many: Number -> Number
;
(define (how-many a b c)
  (cond
	[(> (quadratic-discriminant a b c) 0) 2]
	[(= (quadratic-discriminant a b c) 0) 1]
	[(< (quadratic-discriminant a b c) 0) 0]))



(define 4.4.4-tests
  (test-suite
	"Test for 4.4.4"
	(test-case
	  "how-many"
	  (check-equal? (how-many 1 0 -1) 2)
	  (check-equal? (how-many 2 4  2) 1)
	  )
	)
  )

(run-tests 4.4.4-tests)
