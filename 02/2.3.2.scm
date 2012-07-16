#lang racket
(require rackunit)
(require rackunit/text-ui)

; sum-coins: Number Number Number Number -> Number
;
; 예:
; 1. 1 1 1 1 => 41c
;

(define (sum-coins p n d q)
 (+ (* p  1)
	(* n  5)
	(* d 10)
	(* q 25)))

(define 2.3.2-tests
  (test-suite
	"Test for 2.3.2"

	(test-case
	  "sum-coins"
	  (check-equal? (sum-coins 1 1 1 1) 41))
	))

(run-tests 2.3.2-tests)
