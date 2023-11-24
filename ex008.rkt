#lang htdp/bsl

(require 2htdp/image)

(define cat (bitmap "./images/cat1.png")) ; load image to keep file in text format

(define (tall-wide-or-square img)
  (if (> (image-width img) (image-height img)) "wide"
      (if (< (image-width img) (image-height img)) "tall"
          (if (= (image-width img) (image-height img)) "square" "n/a"))))

(define wide-rect (rectangle 50 10 "solid" "blue"))
(define tall-rect (rectangle 10 50 "solid" "blue"))
(define sq (rectangle 10 10 "solid" "blue"))

(tall-wide-or-square cat)
(tall-wide-or-square wide-rect)
(tall-wide-or-square tall-rect)
(tall-wide-or-square sq)