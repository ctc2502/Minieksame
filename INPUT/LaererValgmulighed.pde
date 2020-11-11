class LaererValgmulighed {

  //Variabler
  String velkommen;
  String knapLeftText;
  String knapRightText;

  LaererValgmulighed() {
    velkommen = "Velkommen til lærer," + "\n" + textboxes.get(0).Text + "!";
    knapLeftText = "Lav en ny prøve";
    knapRightText = "Indlæs tideligere prøver";
    
  }

  void knapper() {
    background(25, 75, 140);

    fill(255);
    textSize(48);
    text(velkommen, 50, 100);

    //knapLeft
    fill(255);
    rect(knapLeftX, knapLeftY, knapW, knapH);
    fill(0);
    textSize(20);
    text(knapLeftText, knapLeftX+50, knapLeftY+45);

    //knapRight
    fill(255);
    rect(knapRightX, knapRightY, knapW, knapH);
    fill(0);
    textSize(20);
    text(knapRightText, knapRightX+10, knapRightY+45);
  }
}
