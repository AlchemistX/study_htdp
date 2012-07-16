#lang racket
(require rackunit)
(require rackunit/text-ui)

; convert3: Number Number Number -> Number
;
; 예:
; 2. (convert3 1 2 3) => 321
;

(define (convert3 first second third)
  (+ (* 100 third)
	 (* 10  second)
	 (* 1   first)))

(define 2.2.4-tests
  (test-suite
	"Test for 2.2.4"

	(test-case
	  "convert3"
	  (check-equal? (convert3 1 2 3) 321)
	  )
	))

(run-tests 2.2.4-tests)
