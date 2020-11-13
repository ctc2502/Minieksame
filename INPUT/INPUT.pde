//Knap Variabler
int opgaver = 0;
int tests = 0;
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
ElevValgmulighed EV;
Forside F;
Login L;

float Phase = 0;

boolean send = false;
String msg = "";
ArrayList<InputField> textboxes = new ArrayList<InputField>();
String userTekst, passTekst, msgTekst;

void setup() {
  size(800, 800);
  loading();
}

void draw() {
  clear();
  //println(Phase);
  if (Phase == 0) {
    Phase01();
  }

  if (Phase == -2) {
  }

  if (Phase == -1) {
    EV.knapper();
    EV.velkomsTekst();
  }
  
    if (Phase == -0.5) {
    L.loginLaerer();
  }

  if (Phase == 0) {
    F.knapper();
  }

  if (Phase == 0.5) {
    L.loginLaerer();
  }

  if (Phase == 1) {
    clear();
    LV.knapper();
    LV.velkomsTekst();
  }

  if (Phase == 2) {
    clear();
    OpgMaker();
  }

  if (Phase == 3) {
    clear();
    findTest();
  }
}

void keyPressed() {
  if (Phase==0.5) {
  for (InputField t : textboxes) {
    if (t.KEYPRESSED(key, keyCode)) {
      clear(); 
      background(25, 75, 140);

      Phase = 1;

      //send = true;
      //msg = textboxes.get(0).Text;
    }
  }
  }
  if (Phase==-0.5) {
  for (InputField t : textboxes) {
    if (t.KEYPRESSED(key, keyCode)) {
      clear(); 
      background(25, 75, 140);

      Phase = -1;

      //send = true;
      //msg = textboxes.get(0).Text;
      }
    }
  }
}

void mouseClicked() {
  for (InputField t : textboxes) {
    t.PRESSED(mouseX, mouseY);
  }
  //knapRight I Phase 1
  if (Phase == 1) {
    if (overRec(knapRightX, knapRightY, knapW, knapH)) {
      clear();
      Phase = 3;
    } 
    //knapLeft
    if (overRec(knapLeftX, knapLeftY, knapW, knapH)) {
      Phase = 2;
    }
  } else if (Phase == 2) {
    opgMouse();
  }
  if (Phase == 0) {
    if (overRec(knapLeftX, knapLeftY, knapW, knapH)) {
      Phase = 0.5;
    }
    if (overRec(knapRightX, knapRightY, knapW, knapH)) {
      Phase = -0.5;
    }
    
    
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

void Phase01(){
  background(bgColor);
  fill(255);
  textAlign(CENTER);
  text("Login", 400, 75);
  textAlign(0);
  
  for (InputField t : textboxes) {
    t.DRAW();
  } 
}
