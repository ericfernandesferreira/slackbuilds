#!/bin/sh

# Slackware LibreOffice Dependency Check - swlodc
# A simple shell script to check if the dependency autodetection
# variables for the LibreOffice slackbuild are still sane.

# Copyright 2015-2016 Hunter Sezen California, USA
# All rights reserved.
#
# Redistribution and use of this script, with or without modification, is
# permitted provided that the following conditions are met:
#
# 1. Redistributions of this script must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#
#  THIS SOFTWARE IS PROVIDED BY THE AUTHOR "AS IS" AND ANY EXPRESS OR IMPLIED
#  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
#  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO
#  EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
#  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
#  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
#  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
#  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

PKGDIR=${PKGDIR:-/var/log/packages}

PRGNAM=apr
if pkg-config --exists apr-1; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-1.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=bluez
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=boost
if [ -d /usr/include/$PRGNAM ]; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: include/$PRGNAM is missing"
    if [ ! -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	echo "warning: $PRGNAM is not installed"
    else
	echo "warning: something is wrong with $PRGNAM"
    fi
fi

PRGNAM=bzip2
if [ -x /bin/$PRGNAM ]; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: bin/$PRGNAM is missing"
    if [ ! -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	echo "warning: $PRGNAM is not installed"
    else
	echo "warning: something is wrong with $PRGNAM"
    fi
fi

PRGNAM=cairo
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=coinmp
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=cppunit
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=clucene
if pkg-config --exists lib$PRGNAM-core; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: lib$PRGNAM-core.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not intalled"
    fi
fi

PRGNAM=curl
if pkg-config --exists lib$PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: lib$PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not intalled"
    fi
fi

PRGNAM=expat
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=glew
if pkg-config --exists ${PRGNAM}mx; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: ${PRGNAM}mx.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=glm
if [ -d /usr/include/$PRGNAM ]; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: include/$PRGNAM is missing"
    if [ ! -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	echo "warning: $PRGNAM is not installed"
    else
	echo "warning: something is wrong with $PRGNAM"
    fi
fi

PRGNAM=graphite2
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=gstreamer
if pkg-config --exists $PRGNAM-1.0; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-1.0.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=harfbuzz
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=hunspell
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=icu4c
if pkg-config --exists icu-i18n; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: icu-i18n is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=lcms2
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libabw
if pkg-config --exists $PRGNAM-0.1; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.1.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libatomic_ops
if pkg-config --exists atomic_ops; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: atomic_ops.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libcdr
if pkg-config --exists $PRGNAM-0.1; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.1.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libcmis
if pkg-config --exists $PRGNAM-0.5; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.5.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libe-book
if pkg-config --exists $PRGNAM-0.1; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.1.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libeot
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
        for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
        do
            grep pkgconfig $f
        done
    else
        echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libetonyek
if pkg-config --exists $PRGNAM-0.1; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.1.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
        for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
        do
            grep pkgconfig $f
        done
    else
        echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libexttextcat
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libfreehand
if pkg-config --exists $PRGNAM-0.1; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.1.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libgltf
if pkg-config --exists $PRGNAM-0.0; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.0.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libiodbc
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=liblangtag
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libmspub
if pkg-config --exists $PRGNAM-0.1; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.1.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libmwaw
if pkg-config --exists $PRGNAM-0.3; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.3.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libodfgen
if pkg-config --exists $PRGNAM-0.1; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.1.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=liborcus
if pkg-config --exists $PRGNAM-0.10; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.10.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libpagemaker
if pkg-config --exists $PRGNAM-0.0; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.0.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libpng
if pkg-config --exists ${PRGNAM}16; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: ${PRGNAM}16.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=librevenge
if pkg-config --exists $PRGNAM-0.0; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.0.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libvisio
if pkg-config --exists $PRGNAM-0.1; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.1.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libwpd
if pkg-config --exists $PRGNAM-0.10; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.10.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libwpg
if pkg-config --exists $PRGNAM-0.3; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.3.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libwps
if pkg-config --exists $PRGNAM-0.4; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-0.4.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=libxml
if pkg-config --exists $PRGNAM-2.0; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-2.0.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning $PRGNAM is not installed"
    fi
fi

PRGNAM=lpsolve
if [ -x /usr/bin/lp_solve ]; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: bin/lp_solve is missing"
    if [ ! -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	echo "warning: $PRGNAM is not installed"
    else
	echo "warning: something is wrong with $PRGNAM"
    fi
fi

PRGNAM=mariadb
if [ -x /usr/bin/mysql ]; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: bin/mysql is missing"
    if [ ! -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	echo "warning: $PRGNAM is not installed"
    else
	echo "warning: something is wrong with $PRGNAM"
    fi
fi

PRGNAM=mdds
if pkg-config --exists $PRGNAM-1.0; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-1.0.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=mozilla-nss
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=mysql-connector-c++
if [ -d /usr/include/cppconn ]; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: include/cppconn is missing"
    if [ ! -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	echo "warning: $PRGNAM is not installed"
    else
	echo "warning: something is wrong with $PRGNAM"
    fi
fi

PRGNAM=mythes
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=neon
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=opencollada
if [ -d /usr/include/$PRGNAM ]; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: include/$PRGNAM is missing"
    if [ ! -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	echo "warning: $PRGNAM is not installed"
    else
	echo "warning: something is wrong with $PRGNAM"
    fi
fi

PRGNAM=openjpeg
if pkg-config --exists libopenjp2; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: libopenjp2 is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning $PRGNAM is not installed"
    fi
fi

PRGNAM=openldap
if [ -x /usr/bin/ldapurl ]; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: bin/ldapurl is missing"
    if [ ! -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	echo "warning: $PRGNAM is not installed"
    else
	echo "warning: something is wrong with $PRGNAM"
    fi
fi

PRGNAM=openssl
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning $PRGNAM is not installed"
    fi
fi

PRGNAM=poppler
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=postgresql
if pkg-config --exists libpq; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: libpq.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=python3
if pkg-config --exists python-3.5; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: python-3.5.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=redland
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=sane
if pkg-config --exists $PRGNAM-backends; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-backends.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=serf
if pkg-config --exists $PRGNAM-1; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM-1.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi

PRGNAM=ucpp
if pkg-config --exists lib$PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: lib$PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi


PRGNAM=vigra
if [ -x /usr/bin/$PRGNAM-config ]; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: bin/$PRGNAM-config is missing"
    if [ ! -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	echo "warning: $PRGNAM is not installed"
    else
	echo "warning: something is wrong with $PRGNAM"
    fi
fi

PRGNAM=zlib
if pkg-config --exists $PRGNAM; then
    echo "$PRGNAM: ok"
else
    echo "$PRGNAM: not found"
    echo "warning: $PRGNAM.pc is missing"
    if [ -r $PKGDIR/$PRGNAM-[0-9]* ]; then
	for f in $( ls $PKGDIR/$PRGNAM-[0-9]* )
	do
	    grep pkgconfig $f
	done
    else
	echo "warning: $PRGNAM is not installed"
    fi
fi
