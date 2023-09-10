(in-package :stumpwm-user)

(unless (stumpwm::head-mode-line (current-head))
  (toggle-mode-line (current-screen) (current-head)))

(setf battery-portable::*no-battery-info* "")
(setf *screen-mode-line-format*
      (list "^B"
            '(:eval (run-shell-command "date '+%R %F %a'|tr -d [:cntrl:]" t))
            " %g "
            (if (env-use-battery (current-env)) "[%B]" "")
            "%W"
            "^b"))
