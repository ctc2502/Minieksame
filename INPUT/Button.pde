class Button {
  float x, y, w, h;
  String s;
  
  Button(float x, float y, float z,  float h, String s) {
  this.x = x;
  this.y = y;
  this.w = z;
  this.h = h;
  this.s = s;
  }
  
  void display(){
    if (overRec(x, y, w, h)) {
    image(arrow, x-2.5, y-2.5, 55, 55);
    } else {
    image(arrow, x, y);
    }
    imageMode(0);
  }
  
  void recDisplay(int r, int g, int b) {
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
  
  void recMouse(int i) {
    if (overRec(x, y, w, h)) {
      Phase = Phase + i;
      elevsvar = 0;
    }
  }
  
  void circleMouse(int i) {
    if (overCircle(x, y, w)) {
      Phase = Phase + i;
    }
  }
}
