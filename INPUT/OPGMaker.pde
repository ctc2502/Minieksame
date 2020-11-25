 /* void OpgMaker() {
  background(bgColor);
  //textAlign(CENTER);
  textSize(45);
  fill(255);
  
  AlmenPos = Pos*1.35;
  //println(OPGPOS.y+OPGSIZ.y/2*AlmenPos+61);
  println(opgaver);
  
  pushMatrix();
  
 // translate(0, Pos*100);
  text("Lav din Prøve", 400, -900);
  
  if (opgaver >= 0) {
    OPG(OPGPOS.x, OPGPOS.y, OPGSIZ.x, OPGSIZ.y);
  } if (opgaver >= 1) {
    OPG(OPGPOS.x, OPGPOS.y+250, OPGSIZ.x, OPGSIZ.y);
  } if (opgaver >= 2) {
    OPG(OPGPOS.x, OPGPOS.y+500, OPGSIZ.x, OPGSIZ.y);
  } if (opgaver >= 3) {
    OPG(OPGPOS.x, OPGPOS.y+750, OPGSIZ.x, OPGSIZ.y);
  } if (opgaver >= 4) {
    OPG(OPGPOS.x, OPGPOS.y+1000, OPGSIZ.x, OPGSIZ.y);
  }
  
  if (opgaver == 0) {
    overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2, OPGSIZ.y/3);
  } if (opgaver == 1) {
     overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+250, OPGSIZ.y/3);
  }  if (opgaver == 2) {
     overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+500, OPGSIZ.y/3);
  } if (opgaver == 3) {
     overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+750, OPGSIZ.y/3);
  } if (opgaver == 4) {
     overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+1000, OPGSIZ.y/3);
  }
  
  popMatrix();
  }
  
  void opgMouse() {
    if (opgaver == 0) {
  if (overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2*AlmenPos+61, OPGSIZ.y/3)) {
    opgaver = 1;
    }
  } else if (opgaver == 1) {
  if (overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2*AlmenPos+61+250, OPGSIZ.y/3)) {
    opgaver = 2;
    }
  } else if (opgaver == 2) {
  if (overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2*AlmenPos+61+500, OPGSIZ.y/3)) {
    opgaver = 3;
    }
  } else if (opgaver == 3) {
  if (overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2*AlmenPos+61+750, OPGSIZ.y/3)) {
    opgaver = 4;
    }
  }
  else if (opgaver == 4) {
  if (overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2*AlmenPos+61+1000, OPGSIZ.y/3)) {
    opgaver = 5;
    }
  }
}

void OPG(float x, float y, float w, float h) {
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
   rect(x+45, y+147.5, 40, 40);
   rect(x+45, y+200-2.5, 40, 40);
   rect(x+45, y+250-2.5, 40, 40);
   rect(x+45, y+300-2.5, 40, 40);
   if (overRec(x+45, y+147.5, 40, 40)) {
     fill(0,250,0); 
     rect(x+42.5, y+145, 45, 45);
   }
   if (overRec(x+45, y+200-2.5, 40, 40)) {
     fill(0,250,0); 
     rect(x+42.5, y+200-5, 45, 45);
   }
   if (overRec(x+45, y+250-2.5, 40, 40)) {
     fill(0,250,0); 
     rect(x+42.5, y+250-5, 45, 45);
   }
   if (overRec(x+45, y+300-2.5, 40, 40)) {
     fill(0,250,0); 
     rect(x+42.5, y+300-5, 45, 45);
   }
   
   
   textSize(25);
   fill(255);
   text("?", x+655, y+85);  
   /*  
   InputField tb = g;
   tb.X = x+50;
   tb.Y = y+50;
   tb.W = w-100;
   tb.H = 35;
         g.DRAW();
   if (mousePressed) {
     g.PRESSED(mouseX, mouseY);
     } */
