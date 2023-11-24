#lang htdp/bsl

(define (string-insert str i)
  (if (>= i (string-length str)) "String too short"
  (string-append (substring str 0 i)
                 "_"
                 (substring str i))))