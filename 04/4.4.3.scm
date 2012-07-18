#lang racket

(require rackunit)
(require rackunit/text-ui)

; pay-back: Number -> Number
;
(define (pay-back aMoney)
  (cond
	[(<= aMoney  500) (+ (* aMoney          0.0025) )]
	[(<= aMoney 1500) (+ (* (- aMoney  500) 0.0050) (pay-back (- aMoney (- aMoney  500))))]
	[(<= aMoney 2500) (+ (* (- aMoney 1500) 0.0075) (pay-back (- aMoney (- aMoney 1500))))]
	[(>  aMoney 2500) (+ (* (- aMoney 2500) 0.01)   (pay-back (- aMoney (- aMoney 2500))))]
	))

(define 4.4.3-tests
 (test-suite
   "tests for 4.4.3"
   (test-case
	 "pay-back"
	 (check-equal? (pay-back 500) 1.25)
	 (check-equal? (pay-back 1400) 5.75)
	 (check-equal? (pay-back 2000) 10.0)
	 (check-equal? (pay-back 2600) 14.75)
	 )
   )
 )

(run-tests 4.4.3-tests)
