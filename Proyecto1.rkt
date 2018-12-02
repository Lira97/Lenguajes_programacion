#lang racket
(define (dia-siguiente D M A );aqui recibe una funcion llamada dia siguiente con los parametros dia,mes y año
  (case D
   [(= D 28);comprueba si el mes tiene 28 dias 
    (cond
      [(= M 2);se comprueba si el mes es febrero 
       (cond
         [(or(and(=(remainder A 4)0)(not(eq?(remainder A 100)0)))(=(remainder A 400)0)) (list (+ D 1) M A)];se comprueba si el ano es año bisiesto si  se cumple las condiciones anteriores se agrega un dia mas
         [else (list 1  (+ M 1)  A)])];si no empieza el sigueinte mes
      [else (list (+ D 1) M A)])];si el mes no es febreo se agrega un dia mas
    
   [(= D 29);comprueba si el mes tiene 29 dias 
    (cond
      [(= M 2);se comprueba si el mes es febrero 
       (cond
         [(and(=(remainder A 4)0)(not(eq?(remainder A 100)0))) (list 1  (+ M 1)  A)];se comprueba si el ano es año bisiesto si se cumple las condiciones anteriores empieza el mes
         [else (error "fecha incorrecta")])];mesaje de error
      [else (error "fecha incorrecta")])];mesaje de error
    
   [(= D 30);comprueba si el mes tiene 30 dias 
    (cond
      [(or (= M 4)(= M 6)(= M 9)(= M 11)) (list 1 (+ M 1) A)];se compruba si es el ultimo dia del mes y dependiendo de que mes sea depende el ultimo dia de cada mes
      [else (list (+ D 1) M A)]
      )]
    
   [(= D 31);comprueba si el mes tiene 31 dias 
    (cond
      [(or (= M 1)(= M 3)(= M 5)(= M 7)(= M 8)(= M 10)(= M 12));se compruba si es el ultimo dia del mes y dependiendo de que mes sea depende el ultimo dia de cada mes
       (cond
         [(= M 12) (list 1 1 (+ A 1))];si se cumple las condicion anterior se agrega un año mas y se cambia al primer mes del año
         [else (list 1 (+ M 1) A)])]
      [else (error "fecha incorrecta")])];mesaje de error
    
   [else (list (+ D 1) M A)]);se agrega un dia para cualquier dia del año 
)