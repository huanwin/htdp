#lang htdp/bsl

(define (string-first s)
  (substring s 0 1))

; Extracts the string starting from index 0 and stopping at (but not including) index 1