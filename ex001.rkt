#lang htdp/bsl

(define x 12)
(define y 5)

(define (hypotenuse x y)
  (sqrt (+ (sqr x) (sqr y))))

(hypotenuse x y)