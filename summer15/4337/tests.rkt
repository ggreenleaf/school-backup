#lang racket
(define fast-reverse
  (λ (lst accum)
    (if (null? lst)
        accum
        (fast-reverse (cdr lst) (cons (car lst) accum)))))

(define rev
  (λ (lst) (fast-reverse lst null)))

