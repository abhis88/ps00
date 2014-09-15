;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |30|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require "extras.rkt")
(require rackunit)

;; revlist : List -> List
;; GIVEN : List of booleans
;; RETURNS : the reverse of the booleans in the list.
;; Examples: 
;; (revlist (list true false)) => (cons false (cons true empty))

(define (revlist lst)
  (cond
    [(empty? lst) empty]
    [else (append (list (not(first lst))) (revlist( rest lst)))]))

;; TESTS

(begin-for-test
  (check-equal? (revlist (list true false)) (cons false (cons true empty))
    "Test Failed, the should have been (cons false (cons true empty))"))