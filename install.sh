#!/bin/sh
USRBIN="/usr/local/bin"
PYTRVER="svnr8"

install -v -m 0755 phatt $USRBIN
if [ $? -ne 0 ]; then
	echo "Installation failed, are you root?"
	exit 1
fi
wget -q "http://downloads.sourceforge.net/project/py-translate/py-translate-${PYTRVER}.tar.gz?r=&ts=1312572442&use_mirror=ignum" -O - | tar xzfO - py-translate/translate > /tmp/translate
install -v -m 0755 /tmp/translate $USRBIN
