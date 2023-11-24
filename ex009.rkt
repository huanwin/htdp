#lang htdp/bsl

(require 2htdp/image)

(define (in x)
  (cond
    [(string? x) (string-length x)]
    [(image? x) (* (image-height x) (image-width x))]
    [(number? x) (if (>= x 0) x (- x))]
    [(boolean? x) (if x 10 20)]))