class tilgengeligeProver {
   
  tilgengeligeProver() {
  }
  
  void tabs(float x, float y, float z, float h) {
    image(border, x, y);
    if (overRec(x,y,z,h)) {
       image(border, width/2-border.width*1.1/2, y*0.95, z*1.1, h*1.1);
      }
    }
  
  void pressed(float x, float y, float z, float h) {
    if (overRec(x,y,z,h)) {
      Phase = -4;
    }
  }
}
