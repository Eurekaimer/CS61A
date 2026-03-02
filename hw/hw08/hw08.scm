(define (ascending? s) 
    ;how to use method like python
    (if (or (null? s) (null? (cdr s)))
        #t
        (and (<= (car s) (car (cdr s))) (ascending? (cdr s)))
    )
)

(define (my-filter pred s)
  ;test null list
  (if (null? s)
      '()
      ;not null case
      (if (pred (car s))
          (cons (car s) (my-filter pred (cdr s)))
          (my-filter pred (cdr s)))))

(define (interleave lst1 lst2)
    ;just recurve
    (if (or (null? lst1) (null? lst2))
        (append lst1 lst2)
        (cons (car lst1)
            (cons (car lst2)
                  (interleave (cdr lst1) (cdr lst2)))))
    )

(define (no-repeats s)
    (if (null? s)
        '()
        ;we neeed filter function
        (cons (car s) (no-repeats (filter (lambda (x) (not (= (car s) x))) (cdr s))))
    )
)


