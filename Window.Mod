MODULE Window;
IMPORT SYSTEM;

TYPE
  Color = RECORD
    r: CHAR;
    g: CHAR;
    b: CHAR;
    a: CHAR;
  END;

VAR
  l: SYSTEM.ADDRESS;
  title : ARRAY 10 OF CHAR;
  C: Color;

PROCEDURE -inclARaylib() '#include "../raylib/src/raylib.h"';
PROCEDURE -InitWindow(width:LONGINT; height:LONGINT; title:ARRAY OF CHAR) "InitWindow(width,height,title)";
PROCEDURE -CloseWindow() "CloseWindow()";
PROCEDURE -BeginDrawing() "BeginDrawing()";
PROCEDURE -EndDrawing() "EndDrawing()";
PROCEDURE -WindowShouldClose():BOOLEAN "(bool)WindowShouldClose()";
PROCEDURE -ClearBackground(color:Color) "ClearBackground(color)";


BEGIN
  title := "Oberon";
  l := SYSTEM.ADR(title[0]);

  InitWindow(400, 400, title);
  WHILE (WindowShouldClose() # TRUE) DO
    BeginDrawing();
      (* ClearBackground(C); *)
    EndDrawing();
  END;

  CloseWindow();
END Window.
