#lang htdp/bsl

; Step 1: How do we want to represent information as data?
; Our information is text, so our data format will be strings

; Step 2: Signature, purpose, stub
; String -> String
; Remove the last character from a given string
; (define (f s) "worl")

; Step 3: Examples
; "goodbye" -> "goodby"
; "mars" -> "mar"

; Step 4: Inventory
; I.e. what does the function take as input, what does it give as output?
; represented as a function template
; (define (string-remove-last str) (... str ...))

; Step 5: Implement
(define (string-remove-last str)
  (substring str
             0
             (- (string-length str) 1)))

; Step 6: Test against examples
(string-remove-last "goodbye")
(string-remove-last "mars")