#lang htdp/bsl

(define (string-last st)
  (if (and (> (string-length st) 0)
           (string? st))
      (substring st (- (string-length st) 1))
      ""))