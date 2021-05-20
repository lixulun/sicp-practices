
;; 使用迭代和加法实现 fast-product

(define (* a b)
  (*-iter a b 0))


(define (*-iter a counter sum)
  (cond ((= counter 0) sum)
        ((= counter 2) (+ (double a) sum))
        ((even? counter) (*-iter (double a) (halve counter) sum))
        (else (*-iter a (- counter 1) (+ sum a)))))

(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(display (* 2 2))
(display "\n")
(display (* 5 5))
(display "\n")
(display (* 24 25))
(display "\n")
(display (* 100 100))
