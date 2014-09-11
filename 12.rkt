;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |12|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; defining struct point
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

; Excercise 12

(make-point 5 3)            ; Should return the same
(point? 5)                  ; Should return false as it is not a point
(point? true)               ; Should return false as it is not a point
(point? (make-point 2 1))   ; Should return true as it a point
(point-x (make-point 8 5))  ; Should return the x-coordinate of the point
(point-y (make-point 42 15)); Should return the y-coordinate of the point
