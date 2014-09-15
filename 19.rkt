;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |19|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require "extras.rkt")
(require rackunit)

;; rel-rec-sequence: Number Number -> Rectangle
;; Takes two numbers and returns a solid blue rectangle, where the first number is
;; the width of the rectangle, and the second number is the proportion of width
;; and height of the rectangle to be produced (i.e. height = width * proportion).
;; Example :
;;  rel-rec-sequence (10 2) => Rectangle with width 10 and height 20
;;  rel-rec-sequence (5 2) => Rectangle with width 5 and height 10

;; Function Definition
(define (rel-rec-sequence in_width in_prop)
  (rectangle in_width (* in_width in_prop) "solid" "blue"))

;; Testing
(begin-for-test
  (check-equal? (rel-rec-sequence 4 2) (rectangle 4 8 "solid" "blue")
    "Test Failed, result should be a solid blue rectangle of width 4 and height 8")
  (check-equal? (rel-rec-sequence 20 2) (rectangle 20 40 "solid" "blue")
    "Test Failed, result should be a solid blue rectangle of width 20 and height 40"))

 
