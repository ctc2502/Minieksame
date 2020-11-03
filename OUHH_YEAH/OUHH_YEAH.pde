
//Variabler for knap left
int knapLeftX = 100;
int knapLeftY = 600;
int knapLeftW = 250;
int knapLeftH = 75;

//Variabler for knap right
int knapRightX = 450;
int knapRightY = 600;
int knapRightW = 250;
int knapRightH = 75;

//Objekter
LaererValgmulighed LV;

void setup() {
  size(800, 800);

  //Objekt
  LV = new LaererValgmulighed();
}

void draw() {
  clear();
  background(25, 75, 140);
  LV.knapper();
  //LV.knapRight();
}

void mouseClicked() {
  //knapRight
  if (mouseReg(knapRightX, knapRightY, knapRightW, knapRightH)) {
    println("knapRight er trykket");
    rect(10, 10, 10, 10);
  }

  //knapLeft
  if (mouseReg(knapLeftX, knapLeftY, knapLeftW, knapLeftH)) {
    println("knapLeft er trykket");
    rect(10, 10, 10, 10);
  }
}

public boolean mouseReg(float x, float y, float w, float h) {
  if (mouseX > x-w && mouseX < x+w && mouseY < y+h && mouseY > y-h) {
    return true;
  } else {
    return false;
  }
}
