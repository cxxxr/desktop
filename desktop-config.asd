(defsystem "desktop-config"
  :depends-on ("desktop"
               "micros")
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
