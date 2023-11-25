#lang htdp/bsl

(define AVG_PPL_AT_5 120)
(define PRICE_SETPOINT 5.0)
(define PPL_CHANGE_PER_DIME 15)
(define DIME 0.10)
(define FIXED_COST 0)
(define COST_PER_PERSON 1.5)
(define PRICE_SENSITIVITY (/ 15 0.10))

(define (attendees ticket-price)
  (- AVG_PPL_AT_5 (* (- ticket-price PRICE_SETPOINT) PRICE_SENSITIVITY)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIXED_COST (* COST_PER_PERSON (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define (profit-magic price)
  (- (* (+ 120
           (* (/ 15 0.1)
              (- 5.0 price)))
        price)
     (+ 0
        (* 1.5
           (+ 120
              (* (/ 15 0.1)
                 (- 5.0 price)))))))

(profit 3)
(profit 4)
(profit 5)

(profit-magic 3)
(profit-magic 4)
(profit-magic 5)