#lang htdp/bsl

; Step 1: How do we wish to represent information as data?
; We want to use strings to represent text data.

; Step 2: Signature, purpose statement, and function header
; Signature: String -> 1String
; Purpose statement: given a non-empty string, we want to extract the first character
; Function header: (define (f str) "0")

; Step 3: Example
; input -> output
; "hello" -> "h"
; "23948adf" -> "2"

; Step 4: Inventory
; Function prototype: (define (string-first s) (... s ...))

; Step 5: Write the function
(define (string-first s)
  (substring s 0 1))

; Test the function on the given examples
(string-first "hello")
(string-first "23948adf")