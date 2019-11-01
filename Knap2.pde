class Knap2 {

  String tekst    = " Tryk for indsæt beløb på KONTO2";

  float xPosition = 165, yPosition  = 270;
  float hojdeKnap = 25, breddeKnap = 250;

  boolean klikket;


  void tegn() {
    fill(0, 150, 90);
    if (klikket) {
      fill(150, 200, 150);
// Dette sørger for at når man trykke så bliver knappen highlighted
    }
    rect(xPosition, yPosition, breddeKnap, hojdeKnap,7);
    fill(255);
    text(tekst, xPosition, yPosition+15);
// Her bliver knappen tegnet og lagt i den position den skal have
  }

  void registrerKlik() {
    if (mousePressed && mouseX < xPosition +breddeKnap && mouseX > xPosition && mouseY > yPosition && mouseY < yPosition + hojdeKnap) {
      klikket = true;
    } else {
      klikket = false;
    }
  }

  boolean erKlikket() {
    return klikket;
  }
}
