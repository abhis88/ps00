;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 27a) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;; sepratedbyspace : List -> String
;; GIVEN : List of strings
;; RETURNS :  the String of all the elements of list seprated by space.
;; Examples: 
;; (sepratedbyspace (list "Hi" "this is" "Abhishek")) => "Hi this is Abhishek"

(define (sepratedbyspace lst)
  (cond
    [(empty? lst) (text "" 12 "black")]
    [else (beside (text (first lst) 12 "black") 
                (text " " 12 "black") 
                (sepratedbyspace (rest lst)))]))

(sepratedbyspace (list "Hi" "this is" "Abhishek"))
