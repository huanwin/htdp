#lang htdp/bsl

(define (string-delete str i)
  (if (>= i (string-length str)) "String too short"
  (string-append
 (substring str 0 i)
 (substring str (+ i 1)))))