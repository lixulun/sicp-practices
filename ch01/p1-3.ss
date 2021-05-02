
;; 定义一个过程，以三个数为参数，返回其中较大的两个数之和

(define (>= a b)        
  (or (> a b) (= a b)))

(define (<= a b)
  (or (< a b) (= a b)))

(define (largest-two-sum a b c)
  (cond ((and (<= a b) (<= a c)) (+ b c))
        ((and (<= a b) (> a c)) (+ a b))
        ((and (> a b) (<= b c)) (+ a c))
        ((and (> a b) (> b c)) (+ a b))))


;; 测试

(largest-two-sum 3 4 5)
(largest-two-sum 3 5 4)
(largest-two-sum 4 3 5)
(largest-two-sum 4 5 3)
(largest-two-sum 5 3 4)
(largest-two-sum 5 4 3)
