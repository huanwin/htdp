#lang htdp/bsl

(define (cvolume lside)
  (* lside lside lside))

(define (csurface lside)
  (* 6 (* lside lside)))