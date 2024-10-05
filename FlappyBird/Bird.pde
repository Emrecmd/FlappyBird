class Bird {
  int kusX = 100;
  int kusY = 470;
  final int kusR = 70;
  int gravity = 5;
  int ziplama = 10;
  color kusRenk = #F2F216;
  //boolean tusBirakma;

  public void kusCiz() {
    strokeWeight(2);
    fill(kusRenk);
    circle(kusX, kusY, kusR);
  }


  public void kusHareket() {
    kusY += gravity;
    if (mousePressed == true) {
      kusY = kusY - ziplama;
    }
  }
}
