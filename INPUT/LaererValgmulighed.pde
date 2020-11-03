class LaererValgmulighed {

  void knapper() {
    background(25, 75, 140);
    
    fill(255);
    textSize(48);
    text("Velkommen til lærer," + "\n" + textboxes.get(0).Text + "!", 50, 100);

    //knapLeft
    fill(255);
    rect(knapLeftX, knapLeftY, knapLeftW, knapLeftH);
    fill(0);
    textSize(20);
    text("Lav en ny prøve", knapLeftX+50, knapLeftY+45);

    //knapRight
    fill(255);
    rect(knapRightX, knapRightY, knapRightW, knapRightH);
    fill(0);
    textSize(20);
    text("Indlæs tideligere prøver", knapRightX+10, knapRightY+45);
  }
}
