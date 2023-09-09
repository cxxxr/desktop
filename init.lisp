(in-package :stumpwm-user)

(setq *input-window-gravity* :center)
(setq *message-window-gravity* :center)
(set-border-color "#777777")
(set-msg-border-width 7)
(setq *timeout-wait* 5)

(set-focus-color "orange")
(set-unfocus-color "gray")

(run-shell-command "xset r rate 250 30")

(set-prefix-key (kbd "C-3"))

(unless (stumpwm::head-mode-line (current-head))
  (toggle-mode-line (current-screen) (current-head)))

(setf *screen-mode-line-format*
      (list "^B"
            '(:eval (run-shell-command "date '+%R, %F %a'|tr -d [:cntrl:]" t))
            "[^B%n^b] %W"
            " [%B] "))

(defcommand shutdown () () (run-shell-command "systemctl poweroff"))
(defcommand reboot () () (run-shell-command "systemctl reboot"))

(define-key *root-map* (kbd "c") "exec alacritty")
(define-key *root-map* (kbd "C-c") "exec alacritty")
(define-key *root-map* (kbd "b") "exec firefox")

(define-key *top-map* (kbd "s-n") "pull-hidden-next")
(define-key *top-map* (kbd "s-p") "pull-hidden-previous")
(define-key *top-map* (kbd "s-o") "fnext")
(define-key *top-map* (kbd "s-TAB") "fother")
(define-key *top-map* (kbd "s-RET") "exec alacritty")
(define-key *top-map* (kbd "s-d") "exec")
(define-key *top-map* (kbd "s-S") "hsplit")
(define-key *top-map* (kbd "s-s") "vsplit")
(define-key *top-map* (kbd "s-R") "remove")
(define-key *top-map* (kbd "s-r") "iresize")

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

(define-key *top-map* (kbd "s-N") "gnext")
(define-key *top-map* (kbd "s-P") "gprev")
(define-key *top-map* (kbd "s-O") "gother")
(define-key *top-map* (kbd "s-g") "groups-verbose")

(defcommand new-group () ()
  (let ((num-groups (length (screen-groups (current-screen)))))
    (gnew (format nil "group-~d" num-groups))))

(define-key *top-map* (kbd "s-G") "new-group")

(define-key *top-map* (kbd "M-TAB") "windowlist")
(define-key stumpwm::*menu-map* (kbd "TAB") 'stumpwm::menu-down)
(define-key stumpwm::*menu-map* (kbd "M-TAB") 'stumpwm::menu-down)

(desktop::init-font)
