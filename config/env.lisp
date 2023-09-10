(in-package :stumpwm-user)

(defstruct env
  font-size)

(defvar *desktop* (make-env :font-size 9))
(defvar *laptop* (make-env :font-size 12))

(defvar *current-env*
  (if (equal "cxxxr-desktop" (uiop:hostname))
      *desktop*
      *laptop*))

(defun current-env ()
  *current-env*)
