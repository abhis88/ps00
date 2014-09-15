;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |27|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require "extras.rkt")
(require rackunit)

;; sepratedbyspace : List -> String
;; GIVEN : List of strings
;; RETURNS :  the String of all the elements of list seprated by space.
;; Examples: 
;; (sepratedbyspace (list "Hi" "this is" "Abhishek")) => "Hi this is Abhishek"

(define (sepratedbyspace lst)
  (cond
    [(empty? lst) ""]
    [else (string-append (first lst) " " (sepratedbyspace( rest lst)))]))

(define (last-space-removal str)
  (substring (sepratedbyspace str) 0 (- (string-length (sepratedbyspace str)) 1)))

;; TESTS
(begin-for-test
  (check-equal? (last-space-removal (list "Hi" "this" "is" "Abhishek")) "Hi this is Abhishek"
    "Test Failed, the output should have been Hi this is Abhishek")
  (check-equal? (last-space-removal (list "Hello... How" "are" "you" "Abhishek?")) "Hello... How are you Abhishek?"
    "Test Failed, the output should have been Hello... How are you Abhishek?"))