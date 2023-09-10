(in-package :stumpwm-user)

(defcommand group-next () ()
  (gnext)
  (stumpwm::echo-groups (current-screen) stumpwm::*group-format* t))

(defcommand group-prev () ()
  (gprev)
  (stumpwm::echo-groups (current-screen) stumpwm::*group-format* t))

(defcommand group-other () ()
  (gother)
  (stumpwm::echo-groups (current-screen) stumpwm::*group-format* t))

(defcommand groups-verbose () ()
  (stumpwm::echo-groups (current-screen) stumpwm::*group-format* t))

(defcommand new-group () ()
  (let ((num-groups (length (screen-groups (current-screen)))))
    (gnew (format nil "group-~d" num-groups))))
