//Knap Variabler
int opgaver = 0;
int tests = 0;
color frameColor, greenColor, bgColor; 
PVector OPGPOS, OPGSIZ;
PImage border, arrow, smiley;
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
  
PImage[] FW = new PImage[80];

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
Gif myAnimation;
InputField[] DescTextboxArray; 
String[] lines;
String[] lines2;

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
  opgMakr.vars();
  //println(lerersvar + " " + elevsvar);
  println(lines2[1]);
  //println(lines[0]);
  background(bgColor);
  switch(Phase) {
  case -6:
    FailingPhase();
    break;
  case -5:
    VictoryPhase();
    break;
  case -4: 
    adm.muligeSvar();
    opgMakr.choice(elevsvar);
    B.display();
    if (elevsvar > 0) {
    Confirm.recDisplay(255, 255, 51);
    } else {
    Confirm.recDisplay(255,255,204);
    }
    break;
  case -3:
    if(opgaver > 0) {
    adm.tabs(tabsPos.x, tabsPos.y, border.width, border.height);
    }
    B.display();
    break;
  case -2:
    EV.knapper();
    EV.velkomsTekst();
    B.display();
    break;
  case -1:
    L.loginLaerer();
    B.display();
    break;
  default:
    DefaultPhase();
    break;  
  case 1:
    L.loginLaerer();
    B.display();
    break;  
  case 2:
    LV.knapper();
    LV.velkomsTekst();
    B.display();
    break;
  case 3:
    opgMakr.display();
    opgMakr.choice(lerersvar);
    B.display();
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
  B.recMouse(1);
  opgMakr.click2();
  if (lerersvar == elevsvar) {
    Confirm.recMouse(-1);
  } else {
    Confirm.recMouse(-2);
  }
  break;
  case -3:
  B.recMouse(1);
  if (opgaver > 0) {
  tabby.recMouse(-1);
  }
    break;
  case -2:
  B.recMouse(1);
  if (overRec(knapLeftX, knapLeftY, knapW, knapH)) {
      Phase = -3;
    }
    break;
  case -1:
  B.recMouse(1);
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
    B.recMouse(-1);
    break;  
  case 2:
    if (overRec(knapRightX, knapRightY, knapW, knapH)) {
      t2.Text = lines2[0];
      t3.Text = lines2[1];
      t4.Text = lines2[2];
      t5.Text = lines2[3];
      t6.Text = lines2[4];
      Phase = 3;
      opgaver++;
    } 
    if (overRec(knapLeftX, knapLeftY, knapW, knapH)) {
      t2.Text = "";
      t3.Text = "";
      t4.Text = "";
      t5.Text = "";
      t6.Text = "";
      Phase = 3;
      opgaver++;
    }
    B.recMouse(-1);
    break;
  case 3:
    opgMakr.click();
    B.recMouse(-1);
    lines[0] = t2.Text;
    lines[1] = t3.Text;
    lines[2] = t4.Text;
    lines[3] = t5.Text;
    lines[4] = t6.Text;
    saveStrings("Questions.csv", lines);
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
  fill(255);
  textAlign(CENTER);
  textSize(32);
  text("Login som lærer eller elev", 400, 75);
  textAlign(0);
  F.knapper();
}

void VictoryPhase() {
  if (FW[frameCount%80]!= null) {
    image(FW[frameCount%80], 0, 0);
  }
  textAlign(CENTER);
  textSize(50);
  fill(255);
  text("Du svarede " + 1 + " ud af " + 1 + " rigtig", width/2, height/2);
  textAlign(0);
}

void FailingPhase() {
  imageMode(CENTER);
  image(smiley, width/2, height/2-200);
  fill(255);
  textAlign(CENTER);
  text("Du svarede " + 0 + " ud af " + 1 + " rigtig", width/2, height/2);
  imageMode(0);
  textAlign(0);
}
