(in-package :stumpwm-user)

(defcommand shutdown () () (run-shell-command "systemctl poweroff"))
(defcommand reboot () () (run-shell-command "systemctl reboot"))
(defcommand suspend () () (run-shell-command "systemctl suspend"))
