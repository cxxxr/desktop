(defsystem "desktop-config"
  :depends-on ("desktop")
  :serial t
  :pathname "config"
  :components ((:file "env")
               (:file "style")
               (:file "mode-line")
               (:file "font")
               (:file "group-commands")
               (:file "power-commands")
               (:file "keybinds")
               (:file "init")))
