;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |20|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;; Human Shape
(above (circle 10 "outline" "black")
       (beside (rectangle 10 50 "outline" "black")
               (rectangle 35 65 "outline" "black")
               (rectangle 10 50 "outline" "black"))
       (beside (rectangle 10 50 "outline" "black")
               (rectangle 10 50 "outline" "black")))