#!/bin/sh 
set -x
GIT=$(which git)
if [ "x"${GIT} = "x" ]; then
	echo "#define GIT_VERSION \"tarball\""
else
	GITVER=$(${GIT} describe --always --dirty)
	echo "#define GIT_VERSION " \"$GITVER\"
fi
