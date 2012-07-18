#lang racket

(require rackunit)
(require rackunit/text-ui)

; tax: Number -> Number
;
(define (tax aPay)
  (cond
	[(<= aPay 240) 0]
	[(<= aPay 480) (+ (* (- aPay 240) 0.15) (tax (- aPay (- aPay 240))))]
	[(>  aPay 480) (+ (* (- aPay 480) 0.28) (tax (- aPay (- aPay 480))))]))

; netpay: Number -> Number
;
(define (netpay aHour)
  (- (* 12 aHour) (tax (* 12 aHour))))

(define 4.4.2-tests
  (test-suite
	"Test for 4.4.2"
	(test-case
	  "tax"
	  (check-equal? (tax 200) 0)
	  (check-equal? (tax 440) 30.0)
	  (check-equal? (tax 490) 38.8)
	  (check-equal? (netpay 40) 444.0)
	  )
	)
  )

(run-tests 4.4.2-tests)
