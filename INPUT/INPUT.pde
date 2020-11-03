int Phase = 0;

boolean send = false;
String msg = "";
ArrayList<InputField> textboxes = new ArrayList<InputField>();
String userTekst, passTekst, msgTekst;

void setup() {
  size(800, 800);
  background(25, 75, 140);
  InputField User = new InputField((width - 300) / 2, 50, 300, 35);

  textboxes.add(User);
}

void draw() {
  for (InputField t : textboxes) {
    t.DRAW();
  } 
  if (send) {
    fill(255);
    text(msg, ( 200 - textWidth(msg)), 260);
  }
}

void keyPressed() {
  for (InputField t : textboxes) {
    if (t.KEYPRESSED(key, keyCode)) {
      clear(); 
      background(25, 75, 140);

      send = true;
      msg = textboxes.get(0).Text;
    }
  }
}

void mousePressed() {
  for (InputField t : textboxes) {
    t.PRESSED(mouseX, mouseY);
  }
}
