(in-package :stumpwm-user)

(set-prefix-key (kbd "C-q"))

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

(define-key *top-map* (kbd "s-N") "gnext")
(define-key *top-map* (kbd "s-P") "gprev")
(define-key *top-map* (kbd "s-O") "gother")
(define-key *top-map* (kbd "s-g") "groups-verbose")

(define-key *top-map* (kbd "s-G") "new-group")

(define-key *top-map* (kbd "M-TAB") "windowlist")
(define-key stumpwm::*menu-map* (kbd "TAB") 'stumpwm::menu-down)
(define-key stumpwm::*menu-map* (kbd "M-TAB") 'stumpwm::menu-down)

(define-key *top-map* (kbd "s-:") "eval")
(define-key *top-map* (kbd "s-;") "colon")
(define-key *top-map* (kbd "s-g") "abort")
(define-key *top-map* (kbd "s-k") "delete")
(define-key *top-map* (kbd "s-b") "exec firefox")
