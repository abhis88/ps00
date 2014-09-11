;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |13|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define-struct point (x y))

; A Point is a (make-point Number Number).
; It represents a position on the screen.
; Interpretation:
;   x = the x-coordinate on the screen (in pixels from the left).
;   y = the y-coordinate on the screen (in pixels from the top).

; struct definition causes racket to generate some functions as mentioned below:
; make-point, point?, point-x, point-y

; CONTRACTS for the functions :

; make-point : Number Number -> Point
; point?  : Point -> Boolean
; point-x : Point -> Number
; point-y : Point -> Number

; Excercise 13

(make-point true false)           ; Should return the same
(point-x (make-point true false)) ; Should return true