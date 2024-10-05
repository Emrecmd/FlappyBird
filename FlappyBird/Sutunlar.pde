class Sutunlar {
  private final int sutunGenislik = 150;
  private int sutunAralik = 200;
  private float sutunx1 = random(300, 850);
  private float sutunx2 = random(1000, 1700);
  private float sutunUzunluk1 = random((200), (800));
  private float sutunUzunluk2 = random((200), (800));
  int hareketHizi = 5;
  public int skor = 0;

  color renk = #329343;

  void cizdirme() {
    fill(renk);
    rect(sutunx1, 0, sutunGenislik, sutunUzunluk1);
    rect(sutunx1, (sutunUzunluk1 + sutunAralik), sutunGenislik, 1000);

    fill(renk);
    rect(sutunx2, 0, sutunGenislik, sutunUzunluk2);
    rect(sutunx2, (sutunUzunluk2 + sutunAralik), sutunGenislik, 1000);
    
    fill(255);
    textSize(50);
    text("skorunuz :" + skor, 800, 1000);
  }

  void kaydirma() {
    sutunx1 -= hareketHizi;
    sutunx2 -= hareketHizi;
  }
  void yenileme() {
    if (sutunx1 < -150) {
      sutunx1 = width;
      skor += 1;
    }
    if (sutunx2 < -150) {
      sutunx2 = width;
      skor += 1;
    }
    
  }
}
