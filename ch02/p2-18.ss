
;; reverse 翻转 list

(define (reverse a)
  (define (iter a b)
    (if (null? a)
        b
        (iter (cdr a) (cons (car a) b))))
  (iter a '()))

(display (reverse (list 1 2 3 4 5)))
(newline)
(display (reverse (list 78 23 11)))
(newline)

