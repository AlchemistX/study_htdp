#lang racket

(require rackunit)
(require rackunit/text-ui)
(require htdp/master)

(define (check-color target1 target2 guess1 guess2)
  (cond
	[(and (symbol=? target1 guess1) (symbol=? target2 guess2)) 'Perfect]
	[(or  (symbol=? target1 guess1) (symbol=? target2 guess2)) 'OneColorAtCorrectPosition]
	[(or  (symbol=? target1 guess2) (symbol=? target2 guess1)) 'OneColorOccurs]
	[else                                                      'NothingCorrect]))

(define 5.1.5-test
  (test-suite
	"Test for 5.1.5"
	(test-case
	  "check-color"
	  (check-equal? (master check-color) true)
	  )
	)
  )

(run-tests 5.1.5-test)


