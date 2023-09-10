(in-package :stumpwm-user)

(unless (stumpwm::head-mode-line (current-head))
  (toggle-mode-line (current-screen) (current-head)))

(setf battery-portable::*no-battery-info* "")
(setf *screen-mode-line-format*
      (list "^7"
            "^B"
            '(:eval (run-shell-command "date '+%R %F %a'|tr -d [:cntrl:]" t))
            (if (env-use-battery (current-env)) " [%B]" "")
            "   %g   "
            "%W"
            "^b"))
