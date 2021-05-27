
;; 根据第一个元素的奇偶性筛选列表

(define (list-parity a)
  (define (filter f a)
    (if (null? a)
        '()
        (let ((first (car a))
              (b (cdr a)))
             (if (f first)
                 (cons first (filter f b))
                 (filter f b)))))
  (let ((first (car a))
        (b (cdr a))
        (valid? (if (even? (car a))
                    (lambda (x) (even? x))
                    (lambda (x) (odd? x)))))
    (cons first (filter valid? b))))


(display (list-parity (list 1 2 3 4 5 6 7 8 9)))
(newline)
(display (list-parity (list 2 3 4 5 6 7 8 9 10)))
(newline)
