#!/bin/bash
./configure --prefix=/usr \
            --sysconfdir=/etc \
            --localstatedir=/var \
            --disable-static &&
make -j $SHED_NUMJOBS &&
make DESTDIR="$SHED_FAKEROOT" install
