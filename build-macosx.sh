#!/bin/sh

set -xe
voc=./voc/install/bin/voc
voc_lib=./voc/install/lib/
raylib=./raylib/src/libraylib.a

compile_osx() {
	$voc -ce Raylib.Mod
	$voc -cm Window.Mod
	clang \
		-fPIC \
		-g \
		*.o -o Window \
		-L${voc_lib} -lvoc-O2 \
		${raylib} \
		-framework OpenGL -framework Cocoa -framework IOKit -framework CoreAudio -framework CoreVideo
}

run() {
	LD_LIBRARY_PATH=${voc_lib} DYLD_LIBRARY_PATH=${voc_lib} ./Window
}

case $1 in
	run)
		run
		;;
	build)
		compile_osx
		;;
	*)
		compile_osx
		run
		;;
esac

