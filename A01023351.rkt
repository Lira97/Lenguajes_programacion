#lang racket

(define (suma list)
  (if (null? list)
      0
      (+ (car list) (suma (cdr list)))
      )
)

(define (count list)
  (if (null? list)
      0
      (+ 1 (count (cdr list)))))

(define (promedio list)
  (/ (suma list) (count list)))