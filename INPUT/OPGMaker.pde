 void OpgMaker() {
  background(bgColor);
  //textAlign(CENTER);
  textSize(45);
  fill(255);
  
    Pos = SB.getPos()+10;
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
  if (opgaver > 2) {
      SB.update();
      SB.display();
    }
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
   image(border, x, y-60);
   rect(x, y, w, h);
   fill(greenColor);
   Desc.X = x+w/4;
   Desc.Y = y+50;
   Desc.W = w/2;
   Desc.H = h/3;
   InputField g = textboxes.get(1);
         g.DRAW();
   if (mousePressed) {
     g.PRESSED(mouseX, mouseY);
   }
  }
 
