/* voc 2.1.0 [2024/03/29] for clang LP64 on darwin xtpaec */

#ifndef Raylib__h
#define Raylib__h

#include "SYSTEM.h"

typedef
	struct Raylib_TColor {
		CHAR r, g, b, a;
	} Raylib_TColor;



import ADDRESS *Raylib_TColor__typ;

import void Raylib_ClearBackground (Raylib_TColor C);
import void *Raylib__init(void);

#define Raylib_BeginDrawing()	BeginDrawing()
#define Raylib_CloseWindow()	CloseWindow()
#define Raylib_EndDrawing()	EndDrawing()
#define Raylib_InitWindow(width, height, title, title__len)	InitWindow(width,height,title)
#define Raylib_WindowShouldClose()	(bool)WindowShouldClose()
#include "../raylib/src/raylib.h"

#endif // Raylib
