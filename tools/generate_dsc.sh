#!/bin/bash -e

. version.sh

if [ -f ${package}_${version}.orig.tar.xz ] ; then
	tar xf ${package}_${version}.orig.tar.xz
	cd ./${package}_${version}
	cp -rv ../debian/jessie/* ./
	debuild -us -uc -S
fi

