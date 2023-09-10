all: stumpwm

stumpwm:
	sbcl --eval '(asdf:make :desktop/executable)'

install: stumpwm
	cp stumpwm /usr/local/bin
	cp stumpwm.desktop /usr/share/xsessions/
