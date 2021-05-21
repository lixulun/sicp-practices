
;; 辛普森定积分(迭代实现 sum)

(define (simpson-integral f a b n)
  (define h (/ (- b a) n))
  (define (term k)
    (define (innr-func) (f (+ a (* k h))))
    (cond ((or (= 0 k) (= n k)) (innr-func))
          ((even? k) (* (innr-func) 2))
          (else (* (innr-func) 4))))
  (define (next a) (+ a 1))
  (* (/ h 3) (sum term 0 next n)))


(define (even? a) (= (remainder a 2) 0))


(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (+ result (term a)))))
  (iter a 0))


(define (cube a) (* a a a))


(display (simpson-integral cube 0 1 100))
(display "\n")
(display (simpson-integral cube 0 1 1000))
(display "\n")
