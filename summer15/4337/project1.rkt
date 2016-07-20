#lang racket
;define my-append
;append two strings together
;'(1 2) '(3) -> '(1 2 3)
(define my-append
  (λ (lstA lstB)
    (if (null? lstA)
        lstB  ;A is null then the new list is B
        (cons (car lstA) (my-append (cdr lstA) lstB))))) ;other wise a list is a cons between the 1st of A + append(the rest of A + B) 


;general algorithm
;define my-reverse
;if the list length is 0 then we have reached the end of the list
;   return nill
;else
;    append the reverse of the rest of the list to he first element
; the rest of the list is defined as all elements that are not the first

(define my-reverse
  (λ (lst)
    (if (null? lst) ;list length is 0 reached end of the list
        empty ;return an null list
        (append (my-reverse (cdr lst)) (list (car lst)))))) ;append reversed last part of the list to the first element of lst

;deep reverse is the same as reverse except nested lists are also reversed
;(1 2 (3 4)) -> '((4 3) 2 1)
;general algoritm same as reverse
;when appending first element if that element itself is a list then reverse it first
(define deep-reverse
  (λ (lst)
    (if (null? lst)
      empty
      (append (deep-reverse (cdr lst)) (if (list? (car lst))
                                              (list (deep-reverse(car lst)))
                                              (list (car lst)))))))
(define my-reverse-no-append
 (λ (lst)
    (if (null? lst)
       empty ;return empty list
       (foldr cons (list (car lst)) (my-reverse-no-append (cdr lst))))))

; not tail recursive because the recursive call is n*fact(n-1)
; so the last call must be evaluated before returning back up the stack
(define fact
  (λ (num)
    (if (< num 2)
        1
        (* num (fact (sub1 num))))))

;to fix this pass the multiplication through as a second argument to the function
(define fact2
  (λ (num) (fact-tailrec num 1)))

(define fact-tailrec
  (λ (num result)
    (if (< num 2)
        result
        (fact-tailrec (sub1 num) (* num result)))))