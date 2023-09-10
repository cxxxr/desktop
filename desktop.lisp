(defpackage :desktop
  (:use :cl :stumpwm-user)
  (:export :launch
           :load-init
           :init-font))
(in-package :desktop)

(defun load-init ()
  (asdf:load-system :desktop-config))

(defun launch ()
  (micros:create-server :dont-close t)
  (stumpwm:stumpwm))
