#lang racket
(require rackunit)
(require rackunit/text-ui)

; Fahrenheit->Celsius: Number -> Number
;
; 예:
; 1. 212F => 100C
; 2. 32F => 0C
;

(define (Fahrenheit->Celsius f)
 (* (- f 32)
	(/ 5 9)))

(define 2.2.1-tests
  (test-suite
	"Test for 2.2.1"

	(test-case
	  "Fahrenheit-Celsius"
	  (check-equal? (Fahrenheit->Celsius 212) 100)
	  )
	))

(run-tests 2.2.1-tests)
