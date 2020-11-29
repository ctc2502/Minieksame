class Login {

  void loginLaerer() {
    fill(255);
    textAlign(CENTER);
    textSize(32);
    text("Indtast Brugernavn", 400, 75);
    textAlign(0);
    InputField t = textboxes.get(0);
         t.DRAW();
     }

  void loginElev() {
    fill(255);
    textAlign(CENTER);
    textSize(32);
    text("Indtast Brugernavn", 400, 75);
    textAlign(0);
    InputField  t = textboxes.get(0);
    t.DRAW();
  }
}
