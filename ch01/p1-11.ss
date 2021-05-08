
;; if n<3 then f(n)=n
;; if n>=3 then f(n)=f(n-1) + 2f(n-2) + 3f(n-3)

;; 树形递归实现

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* (f (- n 2)) 2) (* (f (- n 3)) 3))))

(display (f 20))
(display "\n")


;; 迭代实现

(define (f n)
  (define (iter i a b c)
    (if (> i n)
        a
        (iter (+ i 1) (+ a (* b 2) (* c 3)) a b)))
  (if (< n 3)
      n
      (iter 3 2 1 0)))

(display (f 20))
(display "\n")
