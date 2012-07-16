#lang racket
(require rackunit)
(require rackunit/text-ui)

; total-profit: Number -> Number
;
; 예:
; 1. 10 => 25$
;

(define (total-profit aNumOfAttendance)
 (- (* 5  aNumOfAttendance)
	(+ 20 (* 0.5 aNumOfAttendance))))

(define 2.3.3-tests
  (test-suite
	"Test for 2.3.3"

	(test-case
	  "total-profit"
	  (check-equal? (total-profit 10) 25.0))
	))

(run-tests 2.3.3-tests)
