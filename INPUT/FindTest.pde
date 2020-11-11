void findTest() {
  background(bgColor);
  
   background(bgColor);
  textAlign(CENTER);
  textSize(45);
  fill(255);
  
    Pos = SB.getPos()+10;
  AlmenPos = Pos*1.35;
  //println(OPGPOS.y+OPGSIZ.y/2*AlmenPos+61);   
  
  pushMatrix();
  
  translate(0, Pos*100);
  text("Lav din Prøve", 400, -900);
  
  if (tests >= 0) {
    OPG(OPGPOS.x, OPGPOS.y, OPGSIZ.x, OPGSIZ.y);
  } if (tests >= 1) {
    OPG(OPGPOS.x, OPGPOS.y+250, OPGSIZ.x, OPGSIZ.y);
  } if (tests >= 2) {
    OPG(OPGPOS.x, OPGPOS.y+500, OPGSIZ.x, OPGSIZ.y);
  } if (tests >= 3) {
    OPG(OPGPOS.x, OPGPOS.y+750, OPGSIZ.x, OPGSIZ.y);
  } if (tests >= 4) {
    OPG(OPGPOS.x, OPGPOS.y+1000, OPGSIZ.x, OPGSIZ.y);
  }
  
  if (tests == 0) {
    circle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2, OPGSIZ.y/3);
  } if (tests == 1) {
     circle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+250, OPGSIZ.y/3);
  }  if (tests == 2) {
     circle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+500, OPGSIZ.y/3);
  } if (tests == 3) {
     circle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+750, OPGSIZ.y/3);
  } if (tests == 4) {
     circle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+1000, OPGSIZ.y/3);
  }
  
  popMatrix();
  if (tests > 2) {
      SB.update();
      SB.display();
    }
  }
  
  void testMouse() {
    if (tests == 0) {
  if (overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2*AlmenPos+61, OPGSIZ.y/3)) {
    tests = 1;
    }
  } else if (tests == 1) {
  if (overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2*AlmenPos+61+250, OPGSIZ.y/3)) {
    tests = 2;
    }
  } else if (tests == 2) {
  if (overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2*AlmenPos+61+500, OPGSIZ.y/3)) {
    tests = 3;
    }
  } else if (tests == 3) {
  if (overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2*AlmenPos+61+750, OPGSIZ.y/3)) {
    tests = 4;
    }
  }
  else if (tests == 4) {
  if (overCircle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2*AlmenPos+61+1000, OPGSIZ.y/3)) {
    tests = 5;
    }
  }
  }
