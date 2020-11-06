int opgaver = 0;
color frameColor, greenColor, bgColor; 
PVector OPGPOS, OPGSIZ;
PImage border;
PFont sans; 
float Pos, AlmenPos;
HScrollbar hs1;

void setup() {
  size(800, 800);
  OPGPOS = new PVector(100, -800);
  OPGSIZ = new PVector(600, 150);
  frameColor = color(184, 195, 204);
  bgColor = color(25, 75, 140);
  greenColor = color(25, 140, 75);
  sans = createFont("Sans.ttf", 32);
  textFont(sans);
  loadImages();
  
   hs1 = new HScrollbar(0, 795, width, 16, 16);
  
}

void draw() {
  OpgMaker();
  //circle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2*AlmenPos+61, OPGSIZ.y/3);
  //Debug
  if (mouseButton == RIGHT) {
    textSize(32);
    ellipse( mouseX, mouseY, 2, 2 );
    fill(0);
    text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
    text(frameRate, mouseX+64, mouseY+64);
    fill(255);
  }
  
  
  
}

void mouseReleased() {
  opgMouse();
}

 void OPG(float x, float y, float w, float h) {
   strokeWeight(2); 
   stroke(frameColor);
   fill(bgColor);
   image(border, x, y-60);
   rect(x, y, w, h);
   fill(greenColor);
  }
  
  void OpgMaker() {
    background(bgColor);
  textAlign(CENTER);
  textSize(45);
  fill(255);
  
    Pos = hs1.getPos()+10;
  AlmenPos = Pos*1.35;
  //println(OPGPOS.y+OPGSIZ.y/2*AlmenPos+61);
  println(opgaver);
  
  pushMatrix();
  
  translate(0, Pos*100);
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
    circle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2, OPGSIZ.y/3);
  } if (opgaver == 1) {
     circle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+250, OPGSIZ.y/3);
  }  if (opgaver == 2) {
     circle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+500, OPGSIZ.y/3);
  } if (opgaver == 3) {
     circle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+750, OPGSIZ.y/3);
  } if (opgaver == 4) {
     circle(OPGPOS.x-50, OPGPOS.y+OPGSIZ.y/2+1000, OPGSIZ.y/3);
  }
  
  popMatrix();
  
   hs1.update();
  hs1.display();
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
 
 void loadImages() {
   border = loadImage("Border.png");
   border.resize(602,50);
 }

boolean overRec(float x, float y, float w, float h) {
    if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }

boolean overCircle(float x, float y, float diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
