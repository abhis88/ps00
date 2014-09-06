;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Example_6) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; quadratic-root : NonZeroNumber Number Number -> Number
; GIVEN: all the 3 arguments related to the quadratic equation
; RETURNS: the root of the corresponding quadratic equation.
; Examples:
; (quadratic-root 1 -5 6)  => 3
; (quadratic-root 1 12 36) => -6 

; Definition:
(define (quadratic-root argument_1 argument_2 argument_3)
  (/ (+ (* -1 argument_2) (sqrt (- (sqr argument_2) (* 4 argument_1 argument_3)))) (* argument_1 2)))

; Testing
(quadratic-root 1 -5 6)
(quadratic-root 1 12 36)
