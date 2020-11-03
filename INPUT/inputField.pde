public class InputField { //<>//
  public int TEXTSIZE = 24;

  public int X, Y, H, W;

  InputField(int X, int Y, int W, int H) {
    this.X = X;
    this.Y = Y;
    this.W = W;
    this.H = H;
  }
  public color Background = color(255, 255, 255);
  public color Foreground = color(0, 0, 0);
  public color BackgroundSelected = color(240, 240, 240);
  public color Border = color(30, 30, 30);

  public boolean BorderEnable = false;
  public int BorderWeight = 1;

  public String Text = "";
  public int TextLength =   0;


  private boolean selected = false;

  void DRAW() {
    if (selected) {
      fill(color(BackgroundSelected));
    } else {
      fill(color(Background));
    }

    if (BorderEnable) {
      strokeWeight(BorderWeight);
      stroke(color(Border));
    } else {
      noStroke();
    }

    rect(X, Y, W, H);

    fill(color(Foreground));

    textSize(TEXTSIZE);
    text(Text, X + (textWidth("a") / 2), Y + TEXTSIZE);
  }

  boolean KEYPRESSED(char KEY, int KEYCODE) {
    if (selected) {
      if (KEYCODE == (int)BACKSPACE) {
        BACKSPACE();
      } else if (KEYCODE == 32) {
        addText(' ');
      } else if (KEYCODE == (int)ENTER) {
        return true;
      } else {
        boolean isKeyCapitalLetter = (KEY >= 'A' && KEY <= 'Z');
        boolean isKeySmallLetter = (KEY >= 'a' && KEY <= 'z');
        boolean isKeyNumber = (KEY >= '0' && KEY <= '9');

        if (isKeyCapitalLetter || isKeySmallLetter ||isKeyNumber) {
          addText(KEY);
        }
      }
    }

    return false;
  }

  private void addText(char text) {
    if (textWidth(Text + text) < W) {
      Text += text;
      TextLength++;
    }
  }

  private void BACKSPACE() {
    if (TextLength - 1 >= 0) {
      Text = Text.substring(0, TextLength - 1);
      TextLength--;
    }
  }

  private boolean overBox(int x, int y) {
    if (x >= X && x <= X + W) {
      if (y >= Y && y <= Y + H) {
        return true;
      }
    }

    return false;
  }

  void PRESSED(int x, int y) {
    if (overBox(x, y)) {
      selected = true;
    } else {
      selected = false;
    }
  }
}
