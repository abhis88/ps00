;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |15|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define-student (id name major))
;; A Student is a (make-student Number String String)
;; It represents the id, name and major of the student
;; Interpretation:
;;   id    = the unique identity of the student (in Number)
;;   name  = the name of the student (in string)
;;   major = the major of the student

