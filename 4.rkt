;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; tip : NonNegNumber Number[0.0,1.0] -> Number
; GIVEN: the amount of the bill in dollars and the
; percentage of tip
; RETURNS: the amount of the tip in dollars.
; Examples:
; (tip 10 0.15)  => 1.5
; (tip 20 0.17)  => 3.4 

; Definition:
(define (tip actual_bill tip_percent)
  (* actual_bill tip_percent))

#| Trying to validate the input arguments.

(define (tip actual_bill tip_percent)
  (* (if (> actual_bill 0) actual_bill 0)
     (if (and (>= tip_percent 0.0) (<= tip_percent 1.0)) tip_percent 0))
     )
|#

; Testing
(tip 10 0.15)
(tip 20 0.17)
(tip 30 0.15)
(tip 100 0.15)
