//Knap Variabler
int opgaver = 0;
color frameColor, greenColor, bgColor; 
PVector OPGPOS, OPGSIZ;
PImage border;
PFont sans; 
float Pos, AlmenPos;
Scrollbar SB;

int knapW = 250;
int knapH = 75;

//Variabler for knap left
int knapLeftX = 100;
int knapLeftY = 600;

//Variabler for knap right
int knapRightX = 450;
int knapRightY = 600;

//Objekter
LaererValgmulighed LV;

int Phase = 0;

boolean send = false;
String msg = "";
ArrayList<InputField> textboxes = new ArrayList<InputField>();
String userTekst, passTekst, msgTekst;

void setup() {
  size(800, 800);
  background(25, 75, 140);
  loading();
}

void draw() {
  for (InputField t : textboxes) {
    t.DRAW();
  } 
  if (send) {
    fill(255);
    text(msg, ( 200 - textWidth(msg)), 260);
  }
  if (Phase == 1) {
    clear();
    LV.knapper();
  }
  
  if (Phase == 2) {
    clear();
    OpgMaker();
  }
}

void keyPressed() {
  for (InputField t : textboxes) {
    if (t.KEYPRESSED(key, keyCode)) {
      clear(); 
      background(25, 75, 140);

      Phase = 1;

      send = true;
      msg = textboxes.get(0).Text;
    }
  }
}

void mouseClicked() {
  for (InputField t : textboxes) {
    t.PRESSED(mouseX, mouseY);
  }
  //knapRight
  if (Phase == 1) {
  if (overRec(knapRightX, knapRightY, knapW, knapH)) {
    fill(255,0,0);
    rect(mouseX, mouseY, 100, 100);
  } 
  //knapLeft
  if(overRec(knapLeftX, knapLeftY, knapW, knapH)) {
    Phase = 2;
    }  
  } else if (Phase == 2) {
    opgMouse();
  }
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
