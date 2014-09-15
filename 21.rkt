;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |21|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define-struct person (first-name last-name age height weight))
;; CONSTRUCTOR :
;; A Person is a (make-person String String NonNegativeNumber 
;; NonNegativeNumber NonNegativeNumber).
;; It represents the name, age and build of the person
;; INTERPRETATION:
;;  first-name = the first name fothe person.
;;  last-name  = the last name fothe person.
;;  age = age of the person.
;;  height = height of the person in inches.
;;  weight = weight of the person in kilograms.

;; DESTRUCTOR :


 
;; person-image : person -> image
;; GIVEN : a person struct with first name, last name, age,
;; height and weight as attributes.
;; RETURNS : the image of person based on the height of the person
;; Exampe :
;;  (person-image (make-person "Abhishek" "Kumar" 26 50 80)) => Person Image
;;  (person-image (make-person "Abhishek" "Kumar" 26 25 80)) => Twice the image
;;   in previous example in width and height
(define (person-image person)
  (above 
   (circle (* (* 2 (person-height person)) 0.2) "outline" "black")
   (beside (rectangle (* (* 2 (person-height person)) 0.2) (* (* 2 (person-height person)) 0.8) "outline" "black")
           (rectangle (* (* 2 (person-height person)) 0.6)(* 2 (person-height person)) "outline" "black")
           (rectangle (* (* 2 (person-height person)) 0.2) (* (* 2 (person-height person)) 0.8) "outline" "black"))
   (beside (rectangle (* (* 2 (person-height person)) 0.2) (* 2 (person-height person)) "outline" "black")
           (rectangle (* (* 2 (person-height person)) 0.2) (* 2 (person-height person)) "outline" "black"))))

;; Testing
(person-image (make-person "Abhishek" "Kumar" 26 25 80))
(person-image (make-person "Abhishek" "Kumar" 26 50 80))