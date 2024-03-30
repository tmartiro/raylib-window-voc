MODULE Window;
IMPORT SYSTEM;

CONST
  title = "Oberon";

PROCEDURE -colorInit(R:CHAR;G:CHAR;B:CHAR;A:CHAR):LONGINT '(struct Color){ .r = R, .g = G, .b = B, .a = A }';
PROCEDURE -inclARaylib() '#include "../raylib/src/raylib.h"';
PROCEDURE -InitWindow(width:LONGINT; height:LONGINT; title:ARRAY OF CHAR) "InitWindow(width,height,title)";
PROCEDURE -CloseWindow() "CloseWindow()";
PROCEDURE -BeginDrawing() "BeginDrawing()";
PROCEDURE -EndDrawing() "EndDrawing()";
PROCEDURE -WindowShouldClose():BOOLEAN "(bool)WindowShouldClose()";
PROCEDURE -ClearBackground(color:LONGINT) "ClearBackground(color)";


BEGIN
  InitWindow(400, 400, title);
  WHILE (WindowShouldClose() # TRUE) DO
    BeginDrawing();
      ClearBackground(colorInit(CHR(255),CHR(0),CHR(0),CHR(0)));
    EndDrawing();
  END;

  CloseWindow();
END Window.
