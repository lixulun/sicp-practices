
;; new-if 是用 cond 模拟的，使用它替换 if 实现的平方根的程序

(define (new-if if-clause true-clause false-clause )
  (cond (if-clause true-clause)
        (else false-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.00001))

(define (improve guess x)
  (/ (+ (/ x guess) guess) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))


;; 测试

(sqrt 2)
(sqrt 3)