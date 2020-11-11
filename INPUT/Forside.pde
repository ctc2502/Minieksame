class forside {

  //Variabler
  String velkommen = "";
  String knapLeftText;
  String knapRightText;

  forside() {
    velkommen = "Velkommen til lærer,";
    knapLeftText = "Lav en ny prøve";
    knapRightText = "Indlæs tideligere prøver";
  }

  void knapper() {
    background(25, 75, 140);

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

  void velkomsTekst() {
    fill(255);
    textSize(48);
    text(velkommen + "\n" + textboxes.get(0).Text + "!", 50, 100);
  }
}
