
;; 规范化有理数的正负号


;; 有理数的运算

(define (add-rat x y)
  (make-rat (+ (* (numer y) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))


;; 有理数的表示

(define (make-rat n d)
  (define (good-form? a b)
    (or (> b 0) (= b 0)))
  (if (good-form? n d)
      (let ((v (gcd n d)))
       (cons (/ n v) (/ d v)))
      (make-rat (- 0 n) (abs d))))
  

(define (numer x)
  (car x))
  
(define (denom x)
  (cdr x))


;; GCD

(define (gcd x y)
  (if (= 0 y)
      x
      (gcd y (remainder x y))))


;; print 有理数

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))


;; 测试

(print-rat (make-rat 1 3))
(print-rat (make-rat 4 6))
(print-rat (add-rat (make-rat 2 6) (make-rat 1 6)))
(print-rat (sub-rat (make-rat 4 9) (make-rat 1 3)))
(print-rat (mul-rat (make-rat 2 3) (make-rat 4 5)))
(print-rat (div-rat (make-rat 15 60) (make-rat 2 5)))
(print-rat (sub-rat (make-rat 2 3) (make-rat 1 1)))
(print-rat (sub-rat (make-rat -1 2) (make-rat 2 3)))
(print-rat (mul-rat (make-rat -1 2) (make-rat 2 -3)))

(newline)
