
;; 使用迭代实现 fast-expt

(define (fast-expt b n)
  (fast-expt-iter b n 1))

(define (fast-expt-iter b counter product)
  (cond ((= counter 0) product)
        ((= counter 2) (* b b product))
        ((= (remainder counter 2) 1) (fast-expt-iter b (- counter 1) (* b product)))
        (else (fast-expt-iter (* b b) (/ counter 2) product))))

(display (fast-expt 2 1))
(display "\n")
(display (fast-expt 2 2))
(display "\n")
(display (fast-expt 2 10))
(display "\n")
(display (fast-expt 3 3))
(display "\n")
(display (fast-expt 5 5))
(display "\n")
(display (fast-expt 10 80))
(display "\n")
