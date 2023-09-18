(in-package :stumpwm-user)

(defstruct env
  font-size
  use-battery)

(defvar *desktop* (make-env :font-size 15 :use-battery nil))
(defvar *laptop* (make-env :font-size 12 :use-battery t))

(defvar *current-env*
  (if (equal "cxxxr-desktop" (uiop:hostname))
      *desktop*
      *laptop*))

(defun current-env ()
  *current-env*)
