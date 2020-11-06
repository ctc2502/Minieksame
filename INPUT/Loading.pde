void loading() {
  //Objekt
  LV = new LaererValgmulighed();
  SB = new Scrollbar(0, 795, width, 16, 16);
  InputField User = new InputField((width - 300) / 2, 100, 300, 35);
  
  OPGPOS = new PVector(100, -800);
  OPGSIZ = new PVector(600, 150);
  frameColor = color(184, 195, 204);
  bgColor = color(25, 75, 140);
  greenColor = color(25, 140, 75);
  sans = createFont("Sans.ttf", 32);
  textFont(sans);
  
   
  border = loadImage("Border.png");
  border.resize(602,50);
  textboxes.add(User);
 }
