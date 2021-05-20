
;; 递归实现帕斯卡三角形

(define (pascal n)
  (define (iter ith-row)
    (if (> ith-row n)
        ""
        (list (print-row ith-row 1) (display "\n") (iter (+ ith-row 1)))))
  (define (print-row nth icol)
    (if (> icol nth)
        ""
        (list (display (at nth icol)) (display " ") (print-row nth (+ icol 1)))))
  (define (at nth-row icol)
    (cond ((> icol nth-row) 0)
          ((= icol 0) 0)
          ((= nth-row 1) 1)
          (else (+ (at (- nth-row 1) (- icol 1)) (at (- nth-row 1) icol)))))
  (iter 1))

(pascal 10)
