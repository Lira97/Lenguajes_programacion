#lang racket

(define (distancia p0 p1)
      (sqrt
       (+(expt (-(car p1)(car p0)) 2)
         (expt (-(car(cdr p1))(car(cdr p0))) 2)
       )
    )
)

(define (exor a b)
  (if (null? a) b
      (if (and (member (car a) b) (member (car b) a))
          (exor (cdr a) (cdr b))
          (cons (car a) (exor (cdr a)b))
          )
      ) 
  )

(define (diferencia a b)
  (if (null? a)'()
      (if (member (car a) b)
          (diferencia (cdr a) b)
          (cons (car a)(diferencia (cdr a) b))
          )
      )
  )

(define (perimetro poligono)
  (if (equal? (length poligono) 1)
      0
      (+(distancia (car(reverse poligono))(car poligono)) (+ (distancia (car poligono) (car(cdr poligono))) (perimetro(cdr poligono))))
 )
)