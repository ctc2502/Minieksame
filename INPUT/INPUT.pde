//Knap Variabler
int opgaver = 0;
int tests = 0;
color frameColor, greenColor, bgColor; 
PVector OPGPOS, OPGSIZ;
PImage border;
PFont sans; 
float Pos, AlmenPos;

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
OOOPG opgMakr;
Button B;
Button Confirm;
Button tabby;
Administration adm;

InputField[] DescTextboxArray; 
String[] lines;

PVector tabsPos;

int Phase = 0;
int lerersvar, elevsvar;

boolean send = false;
String msg = "";
ArrayList<InputField> textboxes = new ArrayList<InputField>();
String userTekst, passTekst, msgTekst;

InputField t1, t2, t3, t4, t5, t6;

void setup() {
  size(800, 800);
  loading();
}

void draw() {
  clear();
  println(lerersvar + " " + elevsvar);
  //println(Phase);
  background(bgColor);
  switch(Phase) {
  case -4: 
    opgMakr.choice(elevsvar);
    adm.muligeSvar();
    B.display(255, 0, 0);
    Confirm.display(0, 255, 0);
    break;
  case -3:
    if(opgaver > 0) {
    adm.tabs(tabsPos.x, tabsPos.y, border.width, border.height);
    }
    B.display(255, 0, 0);
    break;
  case -2:
    EV.knapper();
    EV.velkomsTekst();
    B.display(255, 0, 0);
    break;
  case -1:
    L.loginLaerer();
    B.display(255, 0, 0);
    break;
  default:
    DefaultPhase();
    break;  
  case 1:
    L.loginLaerer();
    B.display(255, 0, 0);
    break;  
  case 2:
    clear();
    LV.knapper();
    LV.velkomsTekst();
    B.display(255, 0, 0);
    break;
  case 3:
    clear();
    opgMakr.display();
    opgMakr.choice(lerersvar);
    B.display(255, 0, 0);
    break;
  }

  if (mouseButton == RIGHT) {
    ellipse( mouseX, mouseY, 2, 2 );
    fill(0);
    text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
    text(frameRate, mouseX+64, mouseY+64);
    fill(255);
  }
}

void keyPressed() {
  if (Phase == 1) {
    if (t1.KEYPRESSED(key, keyCode)) {
      clear(); 
      background(25, 75, 140);

      Phase = 2;
      saveStrings(textboxes.get(0).Text, lines);
    }
  }
  if (Phase == -1) {
    if (t1.KEYPRESSED(key, keyCode)) {
      clear(); 
      background(25, 75, 140);

      Phase = -2;
    }
  }
  if (Phase == 3) {
    if (t2.KEYPRESSED(key, keyCode) || t3.KEYPRESSED(key, keyCode) || t4.KEYPRESSED(key, keyCode) || t5.KEYPRESSED(key, keyCode) || t6.KEYPRESSED(key, keyCode)) {
    }
  }
}


void mouseClicked() {

  t1.PRESSED(mouseX, mouseY);

  switch(Phase) {
  case -4:
  B.mouse(1);
  opgMakr.click2();
  if (lerersvar == elevsvar) {
    Confirm.mouse(1);
  }
  break;
  case -3:
  B.mouse(1);
  if (opgaver > 0) {
  tabby.mouse(-1);
  }
    break;
  case -2:
  B.mouse(1);
  if (overRec(knapLeftX, knapLeftY, knapW, knapH)) {
      Phase = -3;
    }
    break;
  case -1:
  B.mouse(1);
    break;
  default:
    if (overRec(knapLeftX, knapLeftY, knapW, knapH)) {
      Phase = 1;
    }
    if (overRec(knapRightX, knapRightY, knapW, knapH)) {
      Phase = -1;
    }
    break;  
  case 1:
    L.loginLaerer();
    B.mouse(-1);
    break;  
  case 2:
    if (overRec(knapRightX, knapRightY, knapW, knapH)) {
      clear();
      Phase = 3;
    } 
    if (overRec(knapLeftX, knapLeftY, knapW, knapH)) {
      Phase = 3;
      opgaver++;
    }
    B.mouse(-1);
    break;
  case 3:
    opgMakr.click();
    B.mouse(-1);
    break;
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

void DefaultPhase() {
  background(bgColor);
  fill(255);
  textAlign(CENTER);
  text("Login", 400, 75);
  textAlign(0);
  F.knapper();
}
