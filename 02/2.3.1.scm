#lang racket
(require rackunit)
(require rackunit/text-ui)

; wage: number -> number
;
; 예:
; 1. 100 => 1200
;
(define (wage h)
  (* 12 h))

; tax: Number -> Number
;
; 예:
; 1. 100 => 15
;
(define (tax w)
  (* w 0.15))

; netpay: Number -> Number
;
; 예:
; 1. 100 => 1020
;
(define (netpay h)
  (- (wage h) (tax (wage h))))

(define 2.3.1-tests
  (test-suite
	"Test for 2.2.1"

	(test-case
	  "wage"
	  (check-equal? (wage 100) 1200))
	(test-case
	  "tax"
	  (check-equal? (tax 1200) 180.0))
	(test-case
	  "netpay"
	  (check-equal? (netpay 100) 1020.0))
	))

(run-tests 2.3.1-tests)
