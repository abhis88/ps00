;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; even_1 : Number -> Boolean
; GIVEN: a number as argument
; RETURNS:  true if this number is divisible by 2, and false otherwise
; Examples:
; (even_1 10)  => true
; (even_1 21)  => false
; (even_1 0)   => true

; Definition:
(define (even_1 number_1)
  (if (= (remainder number_1 2) 0) true false))

; Testing
(even_1 10)
(even_1 21)
(even_1 0)

; Remainder and Modulo Examples

(remainder 4 2)
(remainder 0 2)
(remainder 8 3)
(remainder 4 -2)
(remainder 8 -12)
(modulo 4 2)
(modulo 0 2)
(modulo 8 3)
(modulo 4 -2)
(modulo 8 -12)

