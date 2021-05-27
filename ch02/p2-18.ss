
;; reverse 翻转 list

(define (reverse a)
  (define (iter a lst)
    (if (null? (cdr a))
        (cons (car a) lst)
        (iter (cdr a) (cons (car a) lst))))
  (iter a '()))

(display (reverse (list 1 2 3 4 5)))
(newline)
(display (reverse (list 78 23 11)))
(newline)

