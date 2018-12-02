#lang racket
(define factorial
  (lambda(n)
    (if (= n 0)
      1
      (* n (factorial (- n 1))))))

(define factorial1
  (lambda(F)(lambda(n)
    (if (= n 0)
      1
      (* n (F (- n 1)))))factorial1))

(define (longitud n )
   (if (null? n)
     0
      (+ 1 (longitud (car n)))))

(define longitud1 
  (lambda(n)
   (if (null? n)
     0
      (+ 1 (longitud (car n))))))
