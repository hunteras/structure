;;;; structure.lisp

(in-package #:structure)

;;; "structure" goes here. Hacks and glory await!

(defun accumulate (n start successor)
  "Get a list of n items range from start with successor step forward."
  (labels ((iter (i item acc)
             (if (= i 0)
                 acc
                 (iter (- i 1) (funcall successor item) (cons item acc)))))
    (reverse (iter n start nil))))


