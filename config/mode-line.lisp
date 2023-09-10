(in-package :stumpwm-user)

(unless (stumpwm::head-mode-line (current-head))
  (toggle-mode-line (current-screen) (current-head)))

(setf battery-portable::*no-battery-info* "")

(setf *colors*
      '("black"
        "red"
        "green"
        "yellow"
        "blue"
        "magenta"
        "cyan"
        "white"
        "#2740FF"))
(stumpwm:update-color-map (stumpwm:current-screen))

(setf stumpwm:*mode-line-highlight-template* "^[^78~A^]")
(setf stumpwm:*window-format* "%m%n%s%20t")

(setf *screen-mode-line-format*
      (list "^7"
            "^B"
            '(:eval (run-shell-command "date '+%R %F %a'|tr -d [:cntrl:]" t))
            (if (env-use-battery (current-env)) " [%B]" "")
            "   %g   "
            "%W"
            "^b"))
