;;; lestat.lisp

(defun z-score (x mu sigma)
  (float (/ (- x mu) sigma)))

;; unstandardize, pretty much the opposite of a z-score
(defun unstd (mu z sigma)
  (+ mu (* z sigma)))

;; standard deviation of sample mean
(defun sdsm (sigma n)
  (float (/ sigma (sqrt n))))

;; central limit theorem - categorical variable 
(defun cltc (p n)
  (sqrt (/ (* p (- 1 p)) n)))
