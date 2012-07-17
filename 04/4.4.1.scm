#lang racket

(require rackunit)
(require rackunit/text-ui)

; interest: Number -> Number
;
(define (interest amount)
  (cond
	[(<= amount 1000) (* amount 0.04)]
	[(<= amount 5000) (* amount 0.045)]
	[(<  amount 5000) (* amount 0.05)]))


(define 4.4.1-tests
  (test-suite
	"Test for 4.4.1"
	(test-case
	  "interest"
	  (check-equal? (interest 1000) 40.0)
	  (check-equal? (interest 2000) 90.0)
	  )
	)
  )
(run-tests 4.4.1-tests)
