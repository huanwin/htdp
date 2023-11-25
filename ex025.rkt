#lang htdp/bsl
(require 2htdp/image)
(define cat (bitmap "./images/cat1.png"))
(define (image-classify img)
  (cond
    [(> (image-height img) (image-width img)) "tall"]
    [(= (image-height img) (image-width img)) "square"]
    [(< (image-height img) (image-width img)) "wide"]))

(image-classify cat)

; A fix is to remove the '=' in the greater/lesser than conditions, as that case is handled by the
; equality conditional
; Or move the equality conditional so it is the first thing checked