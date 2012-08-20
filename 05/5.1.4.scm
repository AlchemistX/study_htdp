#lang racket

(require rackunit)
(require rackunit/text-ui)

; quadratic-discriminant: Number -> Number
; 
(define (quadratic-discriminant a b c)
  (- (* b b) (* 4 a c)))

(define (what-kind a b c)
  (cond
	[(= a 0) 'degenerate]
	[(> (quadratic-discriminant a b c) 0) 'two]
	[(= (quadratic-discriminant a b c) 0) 'one]
	[(< (quadratic-discriminant a b c) 0) 'none]))

(define 5.1.4-test
  (test-suite
	"Test for 5.1.4"
	(test-case
	  "what-kind"
	  (check-equal? (what-kind 2 4 2) 'one)
	  (check-equal? (what-kind 1 0 -1) 'two)
	  (check-equal? (what-kind 0 0 -1) 'degenerate)
	  (check-equal? (what-kind 3 5 3) 'none)
	  (check-equal? (what-kind 4 8 4) 'one)
	  )
	)
  )

(run-tests 5.1.4-test)

