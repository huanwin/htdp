#lang htdp/bsl

; Step 1: How do we want to represent real world information as data?
; We're working with text, so use strings which are supported natively

; Step 2: Signature, purpose, stub
; String -> String
; Remove the first character of a string
; (define (f s) "bc")

; Step 3: Examples
; "abc" -> "bc"
; "hello" -> "ello"
; "world" -> "orld"

; Step 4: Inventory
; What do we have and what do we need?
; I.e. what goes in to our function, what does our function produce?
; (define (string-rest s) (... s ...))

; Step 5: Implement
(define (string-rest s)
  (substring s 1))

; Step 6: Test on examples
(string-rest "abc")
(string-rest "hello")
(string-rest "world")