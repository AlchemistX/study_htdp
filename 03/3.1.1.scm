#lang racket
(require rackunit)
(require rackunit/text-ui)

; profit: Number -> Number
;

(define (profit ticket-price)
 (- (revenue ticket-price)
	(cost ticket-price)))

; revenue: Number -> Number
;
(define (revenue ticket-price)
  (* (attendees ticket-price)
	 ticket-price))

; cost: Number -> Number
; 
(define (cost ticket-price)
  (+ 180
	 (* .04 (attendees ticket-price))))

; attendees: Number -> Number
; 
(define (attendees ticket-price)
  (+ 120
	 (* (/ 15 .10) (- 5.00 ticket-price))))

; improved-profit: Number -> Number
;

(define (improved-profit ticket-price)
 (- (revenue ticket-price)
	(improved-cost ticket-price)))

; improved-cost: Number -> Number
; 
(define (improved-cost ticket-price)
  (* 1.50 (attendees ticket-price)))


(define 3.1.1-tests
  (test-suite
	"Test for 3.1.1"
	(test-case
	  "attendees"
	  (check-equal? (attendees 3.00) 420.0)
	  (check-equal? (attendees 4.00) 270.0)
	  (check-equal? (attendees 5.00) 120.0)
	  )
	(test-case
	  "cost"
	  (check-equal? (cost 3.00) 196.8)
	  (check-equal? (cost 4.00) 190.8)
	  (check-equal? (cost 5.00) 184.8)
	  )
	(test-case
	  "revenue"
	  (check-equal? (revenue 3.00) 1260.0)
	  (check-equal? (revenue 4.00) 1080.0)
	  (check-equal? (revenue 5.00)  600.0)
	  )
	(test-case
	  "profit"
	  (check-equal? (profit 3.00) 1063.2)
	  (check-equal? (profit 4.00) 889.2)
	  (check-equal? (profit 5.00) 415.2)
	  )
	)
  )

(define 3.1.4-tests
  (test-suite
	"Test for 3.1.4"
	(test-case
	  "improved-cost"
	  (check-equal? (improved-cost 3.00) 630.0)
	  (check-equal? (improved-cost 4.00) 405.0)
	  (check-equal? (improved-cost 5.00) 180.0)
	  )
	(test-case
	  "profit"
	  (check-equal? (improved-profit 3.00) 630.0)
	  (check-equal? (improved-profit 4.00) 675.0)
	  (check-equal? (improved-profit 5.00) 420.0)
	  )
	)
  )
(run-tests 3.1.1-tests)
(run-tests 3.1.4-tests)

