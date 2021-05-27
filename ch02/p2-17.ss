
;; last-pair 返回非空表里的最后一个元素

(define (last-pair a)
  (if (null? (cdr a))
      (car a)
      (last-pair (cdr a))))


(display (last-pair (list 1 2 3 4 5 6)))
(newline)
(display (last-pair (list 2)))
(newline)
