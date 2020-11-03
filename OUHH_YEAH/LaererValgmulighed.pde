class LaererValgmulighed {

  void knapper() {

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
