;;;; cl-moorpole.asd
;;;;
;;;; Copyright (c) 2017 Matthieu Peeters

(asdf:defsystem #:cl-moorpole
  :description "Describe cl-moorpole here"
  :author "Matthieu Peeters"
  :license "MIT"
  :depends-on (#:cl
               #:iterate
               #:alexandria)
  :serial t
  :components ((:file "package")
               (:file "cl-moorpole")))

