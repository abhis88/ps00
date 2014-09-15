;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |26|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;; Defining Struct
(define-struct point1(x y))
;; A point1 is a (make-point1 Number Number)
;; It represents a position on the screen.
;; Intrepretation :
;;  x = the x-coordinate of the screen (in pixels from the left)
;;  y = the y-coordinate of the screen (in pixels from the top)

;; scene-circle : List -> Image
;; Returns the circle Images on empty scene of 300 300 area
;; Examples: 
;; (scene-circle empty) = 0
;; (scene-circle (list (make-point1 10 10) (make-point1 150 150)))
;;  => cirlce at coordinates (10,10) and (150,150) on empty scene of 300 300

(define (scene-circle lst)
  (cond
    [(empty? lst) (empty-scene 300 300)]
    [else (place-image 
           (circle 10 "solid" "blue") (point1-x (first lst))(point1-y (first lst)) (scene-circle (rest lst)))]))

; TEST
(scene-circle (list (make-point1 10 10) (make-point1 150 150) (make-point1 290 290) (make-point1 10 290) (make-point1 290 10)))
