void setup() {
  fullScreen();
}
Sutunlar sutun = new Sutunlar();
Bird bird = new Bird();
boolean carpisma = false;
void draw() {
  background(#16DAF2);
  sutun.cizdirme();
  bird.kusCiz();
  bird.kusHareket();
  sutun.kaydirma();
  sutun.yenileme();
  carptiMi1();
  carptiMi2();
  fallDown();
}

void carptiMi1() {
  //1.sütun için kontroller
  if (bird.kusX > sutun.sutunx1 &&
    bird.kusX < (sutun.sutunx1 + sutun.sutunGenislik) &&
    bird.kusY > sutun.sutunUzunluk1 &&
    !(bird.kusY < (sutun.sutunUzunluk1 + sutun.sutunGenislik))) {
    carpisma = true;
  } else if (bird.kusX > sutun.sutunx1 &&
    bird.kusX < (sutun.sutunx1 + sutun.sutunGenislik) &&
    !(bird.kusY > sutun.sutunUzunluk1) &&
    (bird.kusY < (sutun.sutunUzunluk1 + sutun.sutunGenislik))) {
    carpisma = true;
  } else {
    carpisma = false;
  }
  if (carpisma == true) {
    gameOver();
  }
}
void carptiMi2() {


  //2.sütun için kontroller
  if (bird.kusX > sutun.sutunx2 &&
    bird.kusX < (sutun.sutunx2 + sutun.sutunGenislik) &&
    bird.kusY > sutun.sutunUzunluk2 &&
    !(bird.kusY < (sutun.sutunUzunluk2 + sutun.sutunGenislik))) {
    carpisma = true;
  } else if (bird.kusX > sutun.sutunx2 &&
    bird.kusX < (sutun.sutunx2 + sutun.sutunGenislik) &&
    !(bird.kusY > sutun.sutunUzunluk2) &&
    (bird.kusY < (sutun.sutunUzunluk2 + sutun.sutunGenislik))) {
    carpisma = true;
  } else {
    carpisma = false;
  }


  if (carpisma == true) {
    gameOver();
  }
}
void gameOver() {
  textSize(100);
  text("oyun bitti.\n skorunuz :" + sutun.skor, 750, 100);
  sutun.hareketHizi = 0;
  bird.gravity = 0;
  bird.ziplama = 0;
}
void fallDown() {
  if (bird.kusY > ((height + 50) - bird.kusR)) {
    gameOver();
  }
  if (bird.kusY < (bird.kusR - 70)) {
    gameOver();
  }
}
