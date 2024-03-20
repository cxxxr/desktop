(in-package :stumpwm-user)

(stumpwm:grename "dev")
(stumpwm:add-group (stumpwm:current-screen) "browse" :background t)
(stumpwm:add-group (stumpwm:current-screen) "other" :background t)

(micros:create-server :dont-close t :port 12345)

(defcommand external-display () ()
  (run-shell-command "xrandr --output eDP-1 --off")
  (run-shell-command "xrandr --output DP-3 --mode 3840x2160"))

(defcommand internal-display () ()
  (run-shell-command "xrandr --output eDP-1 --mode 2880x1800")
  (run-shell-command "xrandr --output DP-3 --off"))
