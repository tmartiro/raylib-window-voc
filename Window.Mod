MODULE Window;
IMPORT SYSTEM, Raylib;

CONST
  title = "Oberon";

VAR
  COLORBG: Raylib.TColor;

BEGIN
  COLORBG.r := 0FFX;
  COLORBG.g := 0X;
  COLORBG.b := 0X;
  COLORBG.a := 0X;
  Raylib.InitWindow(400, 400, title);
  WHILE (Raylib.WindowShouldClose() # TRUE) DO
    Raylib.BeginDrawing();
      Raylib.ClearBackground(COLORBG);
    Raylib.EndDrawing();
  END;

  Raylib.CloseWindow();
END Window.
