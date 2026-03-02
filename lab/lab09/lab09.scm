(define (over-or-under num1 num2) 
  (if (< num1 num2)
    -1
    (if (= num1 num2)
      0
      1))
)

(define (make-adder num) 
  (lambda (inc) (+ num inc))
)

(define (composed f g) 
  (lambda (x) (f (g x)))
)

(define (repeat f n) 
  (if (> n 0) (composed (repeat f (- n 1)) f)
    (lambda (x) x)
  )
)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
  (define max_ab (max a b))
  (define min_ab (min a b))
  (if (zero? (modulo max_ab min_ab))
    min_ab
    (gcd min_ab (modulo max_ab min_ab))
  )
)
