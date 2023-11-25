#lang htdp/bsl

(define AVG_PPL_AT_5 120)
(define PRICE_SETPOINT 5.0)
(define PPL_CHANGE_PER_DIME 15)
(define DIME 0.10)
(define FIXED_COST 180)
(define COST_PER_PERSON 0.04)

(define (attendees ticket-price)
  (- AVG_PPL_AT_5 (* (- ticket-price PRICE_SETPOINT) (/ PPL_CHANGE_PER_DIME DIME))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIXED_COST (* COST_PER_PERSON (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(profit 1)
(profit 2)
(profit 3)
(profit 4)
(profit 5)