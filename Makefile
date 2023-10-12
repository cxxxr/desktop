all: stumpwm

stumpwm:
	qlot exec ros -e '(asdf:make :desktop/executable)'

install: stumpwm
	cp stumpwm /usr/local/bin
	cp stumpwm.desktop /usr/share/xsessions/
