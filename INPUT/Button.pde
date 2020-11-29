class Button {
  
  Button() {
  }
  
  void display(PImage img, float x, float y, float w, float h){
    if (overRec(x, y, w, h)) {
    image(img, x-2.5, y-2.5, w+5, h+5);
    } else {
    image(img, x, y);
    }
    imageMode(0);
  }
  
  void recDisplay(float x, float y, float w, float h, String s, int r, int g, int b) {
    fill(r, g, b);
    stroke(0);
    strokeWeight(2);
    textAlign(CENTER);
    if (overRec(x, y, w, h)) {
    rect(x-2.5, y-2.5, w+5, h+5);
    fill(0);
    textSize(20);
    text(s, x+w/2, y+h/2-5);
    } else {
    fill(r, g, b);
    rect(x, y, w, h);
    fill(0);
    textSize(19);
    text(s, x+w/2, y+h/2-5);
      }
    textAlign(0);
  }
  
  void recMouse(float x, float y, float w, float h, int i) {
    if (overRec(x, y, w, h)) {
      Phase = Phase + i;
      elevsvar = 0;
    }
  }
  
  void circleMouse(float x, float y, float w, float h, int i) {
    if (overCircle(x, y, w)) {
      Phase = Phase + i;
    }
  }
}
