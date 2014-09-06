;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Example_10) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; sum-of-larger-number : Number Number Number -> Number
; GIVEN: three numbers as arguments
; RETURNS: returns the sum of the two larger numbers.
; Examples:
; (sum-of-larger-number 10 20 30)   => 50
; (sum-of-larger-number 20 -30 60)  => 80

; Definition:
(define (sum-of-larger-number number_1 number_2 number_3)
  (- (+ number_1 number_2 number_3) (min number_1 number_2 number_3)))

; Testing
(sum-of-larger-number 10 20 30)
(sum-of-larger-number 20 -30 60)