;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Example_5) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; sq : Number -> Number
; GIVEN: a Number
; RETURNS: Square of the given Number.
; Examples:
; (sq 10)  => 100
; (sq 20)  => 400
; (sq 30)  => 900
; (sq 40)  => 1600

; Definition:
(define (sq i_number)
  (sqr i_number))

; Testing
(sq 10)
(sq 20)
(sq 30)
(sq 40)
