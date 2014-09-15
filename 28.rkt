;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |28|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
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

;; TESTS
;;(sepratedbyspace (list "Hi" "this is" "Abhishek"))

;; listoflists : List -> String
;; GIVEN : List of strings
;; RETURNS :  the String of all the elements of list seprated by space in multiple lines.
;; Examples: 
;; (listoflists (list (list "Hi" "this is" "Abhishek")
;;                    (list "How" "are" "you")))
;;  Hi this is Abhishek
;;  How are you

(define (listoflists lst1)
    (cond
    [(empty? lst1) (text "" 12 "black")]
    [else (above (sepratedbyspace (first lst1)) 
                 (listoflists (rest lst1)))]))

(listoflists (list (list "Hi" "this is" "Abhishek")
                   (list "How" "are" "you")))


