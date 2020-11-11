class Login {

  void login() {
    background(bgColor);
    fill(255);
    textAlign(CENTER);
    text("Login", 400, 75);
    textAlign(0);
    for (InputField t : textboxes) {
      t.DRAW();
    }
  }
}
