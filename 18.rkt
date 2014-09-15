;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |18|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require "extras.rkt")
(require rackunit)

;(rectangle 32 64 "solid" "blue")
;(rectangle 64 128 "solid" "blue")

;;  rec-sequence : Number -> Rectangle
;;  GIVEN : Takes input as a number
;;  RETURNS : a solid blue rectangle, where the width is
;;  calculated by the formula (expt 2 n) and the height 
;;  is calculated by the formula (* (expt 2 n) 2)
;;  Example : 
;;   (rec-sequence 4) => Rectangle of width 16 and height 32
;;   (rec-sequence 5) => Rectangle of width 32 and height 64

;;  Function Definition
(define (rec-sequence n)
  (string-append (number->string (expt 2 n)) "x" (number->string (* (expt 2 n) 2))))

;;  Testing

(begin-for-test
  (check-equal? (rec-sequence 2) "4x8"
    "Test Failed, result should be 4x8")
  (check-equal? (rec-sequence 4) "16x32"
    "Test Failed, result should be 16x32")
  (check-equal? (rec-sequence 5) "32x64"
    "Test Failed, result should be 32x64"))
