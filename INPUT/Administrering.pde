class Administration {
   
  Administration() {
  }
  
  void tabs(float x, float y, float z, float h) {
    image(border, x, y);
    if (overRec(x,y,z,h)) {
       image(border, width/2-border.width*1.1/2, y*0.95, z*1.1, h*1.1);
      }
    }
  
  void muligeSvar(){
    textSize(32);
    fill(255);
    textAlign(CENTER);
    text(t2.Text+"?", width/2, 200);
    
    textAlign(0);
    textSize(20);
    fill(255);
    text(t3.Text, t3.X, t3.Y+20);
    text(t4.Text, t4.X, t4.Y+20);
    text(t5.Text, t5.X, t5.Y+20);
    text(t6.Text, t6.X, t6.Y+20);
  }
}
