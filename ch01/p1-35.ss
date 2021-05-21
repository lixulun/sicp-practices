
;; 使用函数不动点求黄金分割率

(define tolerance 0.0000001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))


;; 测试黄金分割率
(display (fixed-point (lambda (x) (+ 1 (/ 1.0 x))) 1.0))
(display "\n")
