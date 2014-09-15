;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |24|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require "extras.rkt")
(require rackunit)

;; list-product-fn : List -> Number
;; GIVEN : A non empty list of number
;; RETURNS : proudct of all the numbers in list
;; EXAMPLE :
;;  (list-product-fn List(1 2))   => 2
;;  (list-product-fn List(2 2 5)) => 20
(define (list-product-fn lst)
  (cond
    [(empty? lst) 1]
    [else (* (first lst) (list-product-fn (rest lst)))]
    ))

;; TESTS
(begin-for-test
  (check-equal? (list-product-fn (list 1 2 3)) 6
    "Test Failed, result should have been 6")
  (check-equal? (list-product-fn (list 10 2 3 6)) 360
    "Test Failed, result should have been 6")
  (check-equal? (list-product-fn (list 12 2 50)) 1200
    "Test Failed, result should have been 6"))