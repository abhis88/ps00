;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |25|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require "extras.rkt")
(require rackunit)

;; listofboolean : List -> Number
;; GIVEN : A list of booleans
;; RETURNS : True if all the boolean in the list is true else false
;; EXAMPLE :
;;  (listofboolean List(list true true true))  => true
;;  (listofboolean List(list true true false)) => false

(define (listofboolean lst)
      (cond
        [(empty? lst) true]
        [else (and (first lst) (listofboolean (rest lst)))]))

;; TESTS
(begin-for-test
  (check-equal? (listofboolean (list true true true)) true
    "Test Failed, the result should have been true")
  (check-equal? (listofboolean (list false true true)) false
    "Test Failed, the result should have been true")
  (check-equal? (listofboolean (list true true false)) false
    "Test Failed, the result should have been true"))


;; Solving same question using if condition
;(define (listofboolean1 lst)
;      (if(empty? lst) true (and (first lst) (listofboolean1 (rest lst)))))
;
;
;(listofboolean (list true true true))
;(listofboolean (list false true true))
;(listofboolean (list true true false))