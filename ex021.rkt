#lang htdp/bsl

(define (ff a)
  (* 10 a))

(ff (ff 1))

; Does not seem to re-use computation results