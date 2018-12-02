#lang racket
;Enrique Lira Martinez A01023351 Proyecto 3 Mergesort y bubblesort
(define (bubbleSort lista)
  (if (null? lista) '()
    (bubble-aux (length lista) lista));con la funcion sorting mandamos el tamaño de la lista y la lista 
  )

(define (bubble-aux size lista)
    (cond ((= size 1) (bubble-swap lista))   ;separamos cada elemento de la lista 
          (else (bubble-aux (- size 1) (bubble-swap lista))));recursion para realizar el swap de la lista 
  )

(define (bubble-swap lista)
    (if (null? (cdr lista))   
        lista    
        (if (< (car lista) (car (cdr lista)));swap de los valores de la lista
            (cons (car lista) (bubble-swap (cdr lista)))   
            (cons (car (cdr lista)) (bubble-swap (cons (car lista) (cdr (cdr lista))))))
        )
  )

(define (mergeSort lista)
	(if (null? lista) lista
		(if (null? (cdr lista)) lista
			(merge-swap(mergeSort (car (separa lista)))(mergeSort (cadr (separa lista)))));recursion para separar la lista y devolver el resultado del sorting
                )
  )

(define (merge-swap a b)
	(if (null? a) b
		(if (null? b) a
			(if (< (car a) (car b))
                            (cons (car a) (merge-swap (cdr a) b));si a es menor se cambiar con b hasta que acabe la lista 
                            (cons (car b) (merge-swap (cdr b) a)));si no entoces b se cambiar con a hasta que acabe la lista
                        )
                )
  )

(define (impar lista);funcion split para lista impar
	(if (null? lista) '()
		(if (null? (cdr lista)) (list (car lista));separamos todos los elementos hasta que quede vacia la lista 
			(cons (car lista) (impar (cddr lista))))
                )
  )

(define (par lista);funcion split para lista par
	(if (null? lista) '()
		(if (null? (cdr lista)) '() ;separamos todos los elementos hasta que quede vacia la lista 
			(cons (cadr lista) (par (cddr lista))))
                )
  )

(define (separa lista);funcion separa para realizar el arbol  
	(cons (impar lista) (cons (par lista) `()))
  )
