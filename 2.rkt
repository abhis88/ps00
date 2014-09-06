;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; GIVEN: to write an expression which compares 
; two static values 
; RETURNS: true if first static value is greater 
; than second static value else false.
; Examples: 
; (if (> 3 2) true false)  => true
; (if (> 8 2) true false   => true

; Expressions
(if (> (/ 100 3) (/ (+ 100 3) (+ 3 3)))
    true
    false)
    
