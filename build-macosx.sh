#!/bin/sh

set -xe
voc=./voc/install/bin/voc
voc_lib=./voc/install/lib/
raylib=./raylib/src/libraylib.a
files=(Window.Mod)


compile_osx() {
	$voc -cm $files
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


compile_osx
run
