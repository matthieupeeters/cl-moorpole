;;;; cl-moorpole.lisp
;;;;
;;;; Copyright (c) 2017 Matthieu Peeters

(in-package #:cl-moorpole)

(ql:quickload '(#:alexandria #:iterate))



;;; "cl-moorpole" goes here. Hacks and glory await!



;; This function is not optimised. It might be more efficient to use different solutions for different sequences. 
(defun map-fl (result-type fn &rest sequences)
  "Maps a function (lambda (first last &rest elements) ..) onto one or more sequences. 
The arguments 'first' and 'last' are used to indicate that the element is the first or the last to be processed. "
  (funcall #'map result-type #'identity
         (let ((l (reduce #'min (mapcar #'length sequences))))
           (do ((p 0 (1+ p))
                 r)
               ((>= p l)  (nreverse r))
             (push (apply fn (zerop p) (= (1+ p) l)
                          (mapcar (lambda (x) (elt x p)) sequences))
                   r))))) 
