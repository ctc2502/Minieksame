class Button {
  float x, y, z, h;
  
  Button(float x, float y, float z,  float h) {
  this.x = x;
  this.y = y;
  this.z = z;
  this.h = h;
  }
  
  void display(int r, int g, int b) {
    fill(r, g, b);
    rect(x,y,z,h);
  }
  
  void mouse(int i) {
    if (overRec(x,y,z,h)) {
      Phase = Phase + i;
    }
  }
}
