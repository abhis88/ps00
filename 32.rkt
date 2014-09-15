;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |32|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require "extras.rkt")
(require rackunit)

(define-struct point1 (x y ))
;; A point1 is a (make-point1 Number Number)
;; It represents a position on the screen.
;; Intrepretation :
;;  x = the x-coordinate of the screen (in pixels from the left)
;;  y = the y-coordinate of the screen (in pixels from the top)

;; distancehelper : Number Number -> Number
;; Returns the sum of the two input numbers
;; Examples: 
;; (distancehelper 10 20) = 30
(define (distancehelper x y)
  (+ x y))

;; scene-circle : List -> Number
;; Returns the sum of all the points in the list
;; Examples: 
;; (listofpoints (list (make-point1 3 4)
;;                     (make-point1 5 9)))
;; 21

(define (listofpoints lst)
  (cond
    [(empty? lst) 0]
    [else (+ (distancehelper (point1-x (first lst))
                             (point1-y (first lst))
                             )
             
             (listofpoints (rest lst)))]))

;; TESTS
(begin-for-test
  (check-equal? (listofpoints (list (make-point1 3 4) (make-point1 5 9)))
     21 "Test Failed, the sum of list of points should have been 21"))