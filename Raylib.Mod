MODULE Raylib;

IMPORT SYSTEM;

TYPE
  TColor* = RECORD
    r*: CHAR;
    g*: CHAR;
    b*: CHAR;
    a*: CHAR;
  END;

(* PUBLIC *)
PROCEDURE -inclARaylib*() '#include "../raylib/src/raylib.h"';
PROCEDURE -InitWindow*(width:LONGINT; height:LONGINT; title:ARRAY OF CHAR) "InitWindow(width,height,title)";
PROCEDURE -CloseWindow*() "CloseWindow()";
PROCEDURE -BeginDrawing*() "BeginDrawing()";
PROCEDURE -EndDrawing*() "EndDrawing()";
PROCEDURE -WindowShouldClose*():BOOLEAN "(bool)WindowShouldClose()";


(* PRIVATE *)
PROCEDURE -colorInit(R:CHAR;G:CHAR;B:CHAR;A:CHAR):LONGINT '(struct Color){ .r = R, .g = G, .b = B, .a = A }';
PROCEDURE -clearBackgroundR(color:LONGINT) "ClearBackground(color)";



PROCEDURE ClearBackground*(C:TColor);
BEGIN
      clearBackgroundR(colorInit(C.r,C.g,C.b,C.a));
END ClearBackground;
END Raylib.
