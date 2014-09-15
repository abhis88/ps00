;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |31|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;; listcircle : List -> Images
;; GIVEN : List of numbers
;; RETURNS : the list of circles.

(define (listcircle lst)
  (cond
    [(empty? lst) empty]
    [else (append (list (circle (first lst) "solid" "blue" )) (listcircle( rest lst)))]))


(listcircle (list 1 2 3 4))
