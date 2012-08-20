#lang racket

(require rackunit)
(require rackunit/text-ui)
(require htdp/guess)

; check-guess: Number Number -> Symbol
; Check guess is smaller than or larger than or equal to target.
;
(define (check-guess guess target)
  (cond
    [(> target guess) 'TooSmall]
    [(= target guess) 'Perfect]
    [(< target guess) 'TooLarge]))

(define 5.1.2-tests
  (test-suite
	"Test for 5.1.2"
	(test-case
	  "check-guess"
	  (check-equal? (guess-with-gui check-guess) true)
	  )
	)
  )

(run-tests 5.1.2-tests)
