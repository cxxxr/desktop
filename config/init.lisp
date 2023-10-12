(in-package :stumpwm-user)

(stumpwm:grename "dev")
(stumpwm:add-group (stumpwm:current-screen) "browse" :background t)
(stumpwm:add-group (stumpwm:current-screen) "other" :background t)

(micros:create-server :dont-close t :port 12345)
