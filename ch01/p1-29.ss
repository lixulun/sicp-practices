
;; 辛普森定积分

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
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))


(define (cube a) (* a a a))


(display (simpson-integral cube 0 1 100))
(display "\n")
(display (simpson-integral cube 0 1 1000))
(display "\n")
