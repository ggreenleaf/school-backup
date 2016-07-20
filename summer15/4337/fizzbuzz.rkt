#lang racket
(define helper
  (λ (num)
    (if (= 0 (modulo num 15))
        "FizzBuzz"
        (if (= 0 (modulo num 5))
            "Buzz"
            (if (= 0 (modulo num 3))
                "Fizz"
                num)))))
(define fizzbuzz
 (λ (num)
   (helper num)))