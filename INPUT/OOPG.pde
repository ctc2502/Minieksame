class OOOPG {
  
  float x, y, w, h;
  public boolean s1, s2, s3, s4;
  
  OOOPG(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void display() {
    strokeWeight(2);
   stroke(frameColor);
   fill(bgColor);
   image(border, x, y-80);
   rect(x, y, w, h);
   fill(greenColor);
   t2.X = x+50;
   t2.Y = y+50;
   t2.W = w-100;
   t2.H = 35;
   t2.DRAW();
   if (mousePressed) {
     t2.PRESSED(mouseX, mouseY);
     }
   t3.X = x+100;
   t3.Y = y+150;
   t3.W = w-150;
   t3.H = 35;
         t3.DRAW();
   if (mousePressed) {
     t3.PRESSED(mouseX, mouseY);
     }
   t4.X = x+100;
   t4.Y = y+200;
   t4.W = w-150;
   t4.H = 35;
         t4.DRAW();
   if (mousePressed) {
     t4.PRESSED(mouseX, mouseY);
     }
   t5.X = x+100;
   t5.Y = y+250;
   t5.W = w-150;
   t5.H = 35;
         t5.DRAW();
   if (mousePressed) {
     t5.PRESSED(mouseX, mouseY);
     }
   t6.X = x+100;
   t6.Y = y+300;
   t6.W = w-150;
   t6.H = 35;
         t6.DRAW();
     if (mousePressed) {
     t6.PRESSED(mouseX, mouseY);
     }  
   
   fill(255);
   stroke(0);
   strokeWeight(2);
   fill(255);
   if (s1) {
   fill(0,250,0);
   rect(t3.X-55, t3.Y-2.5, 40, 40);
   } else {
   fill(255);  
   rect(t3.X-55,t3.Y-2.5, 40, 40);  
   }
   
   if (s2) {
   fill(0,250,0);  
   rect(t4.X-55, t4.Y-2.5, 40, 40);
   } else {
   fill(255);  
   rect(t4.X-55, t4.Y-2.5, 40, 40);
   }
   
   if (s3) {
   fill(0,250,0);  
   rect(t5.X-55, t5.Y-2.5, 40, 40);
   } else {
   fill(255);  
   rect(t5.X-55, t5.Y-2.5, 40, 40);
   }
   
   if (s4) {
   fill(0,250,0);  
   rect(t6.X-55, t6.Y-2.5, 40, 40);
   } else {
   fill(255);  
   rect(t6.X-55, t6.Y-2.5, 40, 40);
   }
   
   if (overRec(t3.X-55, y+147.5, 40, 40)) {
     fill(0,250,0); 
     rect(x+42.5, y+145, 45, 45);
   }
   if (overRec(t4.X-55, y+200-2.5, 40, 40)) {
     fill(0,250,0); 
     rect(x+42.5, y+200-5, 45, 45);
   }
   if (overRec(t5.X-55, y+250-2.5, 40, 40)) {
     fill(0,250,0); 
     rect(x+42.5, y+250-5, 45, 45);
   }
   if (overRec(t6.X-55, y+300-2.5, 40, 40)) {
     fill(0,250,0); 
     rect(x+42.5, y+300-5, 45, 45);
   }
   
   
   textSize(25);
   fill(255);
   text("?", x+655, y+85);  
  }
  
  void click() {
    if (overRec(t3.X-55, y+147.5, 40, 40)) {
     s1 = true;
     s2 = false;
     s3 = false;
     s4 = false;
   }
   if (overRec(t4.X-55, y+200-2.5, 40, 40)) {
     s1 = false;
     s2 = true;
     s3 = false;
     s4 = false;
   }
   if (overRec(t5.X-55, y+250-2.5, 40, 40)) {
     s1 = false;
     s2 = false;
     s3 = true;
     s4 = false;
   }
   if (overRec(t6.X-55, t6.Y-2.5, 40, 40)) {
     s1 = false;
     s2 = false;
     s3 = false;
     s4 = true;
   }
  }
}
