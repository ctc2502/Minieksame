void loading() {
  //Objekt
  border = loadImage("Border.png");
  border.resize(702,75);
  tabsPos = new PVector(width/2-border.width/2, 100);
  
  LV = new LaererValgmulighed();
  EV = new ElevValgmulighed();
  F = new Forside();
  L = new Login();
  
  B = new Button(10, 10, 50, 50);
  Confirm = new Button(600, 700, 150, 50);
  tabby = new Button(tabsPos.x, tabsPos.y, border.width, border.height);
  
  adm = new Administration();
  opgMakr = new OOOPG(50, 150, 700, 600);
  
  InputField UserTextbox = new InputField((width - 300) / 2, 100, 300, 35, "YES");
  
  DescTextboxArray = new InputField[5];
  
  OPGPOS = new PVector(50, 150);
  OPGSIZ = new PVector(700, 600);
  frameColor = color(184, 195, 204);
  bgColor = color(25, 75, 140);
  greenColor = color(25, 140, 75);
  sans = createFont("Sans.ttf", 32);
  textFont(sans);
  
  
  textboxes.add(UserTextbox);
  for (int i = 0; i < 5; i++) {
    DescTextboxArray[i] = new InputField();
    textboxes.add(DescTextboxArray[i]);
  }
  
  t1 = textboxes.get(0);
  t2 = textboxes.get(1);
  t3 = textboxes.get(2);
  t4 = textboxes.get(3);
  t5 = textboxes.get(4);
  t6 = textboxes.get(5);
  
  lines = new String[5];
  lines = loadStrings("Questions.csv");
  //lines2[0] = t1.Text;
  
  
 }
