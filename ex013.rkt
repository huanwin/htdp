#lang htdp/bsl

(define (string-first st)
  (if (and (> (string-length st)
              0)
           (string? st))
      (substring st 0 1)
      "Must be a non-empty string"))