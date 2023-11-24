#lang htdp/bsl

(define sunny #true)
(define friday #false)

(or (not sunny) friday)

; The answer is #false because we want to check if [(sunny is false) OR (friday is true)].
; At least one of those conditions in parens must be true for the OR to be true, and in this
; case, since neither are true, the OR returns #false.

; With two variables (sunny and friday), 4 combinations of booleans can be made:
; (2^2) == 4