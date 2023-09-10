(in-package :stumpwm-user)

(xft:cache-fonts)
(stumpwm:set-font
 (make-instance 'xft:font
                :family "VL Gothic"
                :subfamily "regular"
                :size (env-font-size (current-env))))

(stumpwm::resize-mode-line (first stumpwm::*mode-lines*))
