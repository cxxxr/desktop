(in-package :stumpwm-user)

(xft:cache-fonts)
(desktop::init-font
 (make-instance 'xft:font
                :family "VL Gothic"
                :subfamily "regular"
                :size 12))
