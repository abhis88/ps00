;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |16|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;; Doing excercise 16

(define my-image (bitmap "one.jpg"))
(define my-image1 (bitmap "two.jpg"))
(define my-image2 (bitmap "three.jpg"))

(above my-image my-image1 my-image2)