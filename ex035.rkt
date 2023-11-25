#lang htdp/bsl

; Step 1: How do we wish to represent real-world information as computer data?
; The string type should work for this.

; Step 2: Signature, purpose statement, and function stub (which matches the signature)
; String -> 1String
; Extract the last character from a non-empty string
; (define (f s) "a")

; Step 3: Examples
; input -> output
; "hello" -> "o"
; "world" -> "d"

; Step 4: Inventory (what we have and what we need)
; (define (string-last s) (... s ...)

; Step 5: Write the code
(define (string-last s)
  (substring s
             ; Remember that strings are indexed from 0
             (- (string-length s) 1)))

; Step 6: Test
(string-last "hello")
(string-last "world")
