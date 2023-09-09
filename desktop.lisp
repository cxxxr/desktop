(defpackage :desktop
  (:use :cl :stumpwm-user)
  (:export :launch
           :load-init
           :init-font))
(in-package :desktop)

(defun init-font ()
  (xft:cache-fonts)
  (stumpwm:set-font (list (make-instance 'xft:font
                                         :family "IPAGothic"
                                         :subfamily "Regular"
                                         :size 11))))

(defun load-init ()
  (load (asdf:system-relative-pathname :desktop "init.lisp")))

(defun launch ()
  (micros:create-server :dont-close t)
  (stumpwm:stumpwm))
