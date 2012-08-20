#lang racket

(require rackunit)
(require rackunit/text-ui)
;(require htdp/guess)

(define (digits a b c)
  (+ (* 100 a) (* 10 b) c))

(define (check-guess3 a b c target)
  (cond
	[(> target (digits a b c)) 'TooSmall]
	[(= target (digits a b c)) 'Perfect]
	[(< target (digits a b c)) 'TooLarge]))

(define 5.1.3-tests
  (test-suite
	"Test for 5.1.3"
	(test-case
	  "check-guess3"
	  (check-equal? (check-guess3 1 2 3 123) 'Perfect)
	  )
	)
  )

(run-tests 5.1.3-tests)
