
;; 对于很大或者很小的数字，使用一个固定策略来实现 good-enough 会失效
;; 改变策略使用比率变化变小来作为终止策略。

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (good-enough? guess x)
  ; (< (abs (- (* guess guess) x)) 0.00001))
  ;; 改用速率终止条件
  (< (/ (abs (- (* guess guess) x)) guess) 0.0000000000001))

(define (improve guess x)
  (/ (+ (/ x guess) guess) 2))

(define (sqrt x)
  (sqrt-iter 0.1 x))


;; 测试大数和小数

(sqrt (* 231299999999999999984.2342346 231299999999999999984.2342346))
;; 大数没有看出有实效的情况，也许是优化的好？

(sqrt (/ 1 100000000))
;; => 亿分之一时，偏差已经超过一倍了