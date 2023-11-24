#lang htdp/bsl

(define str "helloworld")
(define i 5)

(string-append
 (substring str 0 i)
 (substring str (+ i 1)))

; Legitimate values for i are 0 through (- (string-length str) 1)