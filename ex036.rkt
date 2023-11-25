#lang htdp/bsl

(require 2htdp/image)

; Step 1: How do want to represent real world information as data?
; We're working with images and want a numerical output
; BSL handles images natively, as well as numbers

; Step 2: Signature, purpose statement, stub (SPS)
; Image -> Number
; Counts the number of pixels in an image
; (define (f img) 10)

; Step 3: Examples
; (rectangle 10 20 "solid" "red") -> 200
; (rectangle 5 5 "solid" "green") -> 25

; Step 4: Inventory/template
; What do we have and what do we need i.e. what goes in and what comes out
; (define (image-area img) (... img ...)

; Step 5: Implement
(define (image-area img)
  (* (image-height img) (image-width img)))

; Step 6: Test
(image-area (rectangle 10 20 "solid" "red"))
(image-area (rectangle 5 5 "solid" "green"))