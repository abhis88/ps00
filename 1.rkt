;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; GIVEN: to write an expression whose values shall 
; be equal to number of seconds in leap year
; RETURNS: number of seconds in a leap year.
; Examples: 
; Leap Year has 31622400 seconds

; Expressions
(* 366 (* 24 (* 60 60)))
(* 366 (* 24 (sqr 60)))
(* 366 (* 24 (* (sqrt 3600) (sqrt 3600))))