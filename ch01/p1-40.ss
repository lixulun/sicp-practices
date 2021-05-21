
;; 使用牛顿法逼近 x^3+ax^2+bx+c 的零点

(define dx 0.00001)

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x)) dx)))

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))


;; p1-35 的不动点实现

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



(define (newton-method g guess)
  (fixed-point (newton-transform g) guess))


;; 测试
  
(define (cubic a b c)
  (define (cube x)
    (* x x x))
  (define (square x)
    (* x x))
  (lambda (x)
    (+ (cube x) (* a (square x)) (* b x) c)))


; (trace cubic newton-method newton-transform deriv)
(display (newton-method (cubic 1 1 1) 1))
(display "\n")
