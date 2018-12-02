#lang racket


(define (factorial num)
  (if (= num 0)
      1
      (* num(factorial (- num 1))))
)


(define (sum-array list)
  (if (null? list)
      0
      (+ (car list) (sum-array (cdr list)))
      )
)

(define (opera i op list)
  (if (null? list)
      i
      (op (car list) (opera i op (cdr list)))
      )
)

(define (reversa lists)
  (if (null? lists)
      0

      (reversa (cons (cdr lists) (car lists)))
      )
)
(define (aplica f lista)
    (if (null? lista)
      '()
      (cons (f (car lista)) (aplica f (cdr lista))))
  ) 