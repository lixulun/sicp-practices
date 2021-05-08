
;; 递归实现帕斯卡三角形

(define (pascal n)
  (define (at n i)
    (cond ((> i n) 0)
          ((= i 0) 0)
          ((= n 1) 1)
          (else (+ (at (- n 1) (- i 1)) (at (- n 1) i)))))
  (define (print-row r i)
    (if (= 1 i)
        (list (display 1) (display " "))
        (list (print-row r (- i 1)) (display (at r i)) (display " "))))
  (if (= n 0)
      ""
      (list (pascal (- n 1)) (print-row n n) (display "\n"))))


(pascal 10)
