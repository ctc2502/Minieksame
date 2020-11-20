

void loading() {
  //Objekt
  LV = new LaererValgmulighed();
  EV = new ElevValgmulighed();
  F = new Forside();
  L = new Login();
  InputField UserTextbox = new InputField((width - 300) / 2, 100, 300, 35, "Brugernavn");
  
  DescTextboxArray = new InputField[5];
  
  OPGPOS = new PVector(50, 150);
  OPGSIZ = new PVector(700, 600);
  frameColor = color(184, 195, 204);
  bgColor = color(25, 75, 140);
  greenColor = color(25, 140, 75);
  sans = createFont("Sans.ttf", 32);
  textFont(sans);
  
   
  border = loadImage("Border.png");
  border.resize(702,75);
  textboxes.add(UserTextbox);
  for (int i = 0; i < 5; i++) {
    DescTextboxArray[i] = new InputField();
    textboxes.add(DescTextboxArray[i]);
  }
  
  t1 = textboxes.get(0);
  t2 = textboxes.get(1);
 }
