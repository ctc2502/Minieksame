void findTest() {
  background(bgColor);
  
  if (tests >= 0) {
    OPG(OPGPOS.x, OPGPOS.y, OPGSIZ.x, OPGSIZ.y);
  } if (tests >= 1) {
    OPG(OPGPOS.x, OPGPOS.y+250, OPGSIZ.x, OPGSIZ.y);
  } if (tests >= 2) {
    OPG(OPGPOS.x, OPGPOS.y+500, OPGSIZ.x, OPGSIZ.y);
  }
}
