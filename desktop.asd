(defsystem "desktop"
  :depends-on ("stumpwm"
               "battery-portable"
               "ttf-fonts"
               "micros")
  :serial t
  :components ((:file "desktop")))

(defsystem "desktop/executable"
  :build-operation program-op
  :build-pathname "stumpwm"
  :entry-point "desktop:launch"
  :depends-on ("desktop"))
