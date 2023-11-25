#lang htdp/bsl
(require 2htdp/batch-io)

(define (letter fst lst signature-name)
  (string-append
   (opening fst)
   "\n\n"
   (body fst lst)
   "\n\n"
   (closing signature-name)))

(define (opening fst)
  (string-append "Dear " fst ","))

(define (body fst lst)
  (string-append
   "We have discovered that all people with the" "\n"
   "last name " lst " have won our lottery. So, " "\n"
   fst ", " "hurry and pick up your prize."))

(define (closing signature-name)
  (string-append
   "Sincerely,"
   "\n\n"
   signature-name
   "\n"))

#| (write-file
    'stdout
    (letter "Matthew" "Fisler" "Felleisen"))
   
   ; 3 inputs of my choice
   (write-file
    'stdout
 (letter "First" "Last" "Sig")) |#

; Define main from exercise description
(define (main in-fst in-lst in-signature out)
  (write-file out
              (letter (read-file in-fst)
                      (read-file in-lst)
                      (read-file in-signature))))

; Create file with first name from prompted user input
(write-file "first.txt"
            (read-file 'stdin))
; Create file with last name from prompted user input
(write-file "last.txt"
            (read-file 'stdin))
; Create file with signature name
(write-file "sig.txt"
            "O5-9")

; Invoke main on the files
(main "first.txt" "last.txt" "sig.txt" "output.txt")