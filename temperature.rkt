#lang htdp/bsl

(require 2htdp/batch-io)

(define (C f)
  (* 5/9 (- f 32)))

(define (convert in out)
  (write-file out
              (string-append
               (number->string
                (C
                 (string->number
                  (read-file in))))
              "\n")))

(convert "sample.dat" "out.dat")