class TekstFelt {
  StringBuffer input = new StringBuffer();

  void tegn() {
    rect(10, 25, 250, 35,7);
    fill(0);
    text("TAST BELØB: " +input.toString(), 10, 50);
  }

  void tilfojTegn() {
    input.append(key);
  }

  void ryd() {
    input.delete(0, input.length());
//Denne kode fjerner det beløb man har tastet ind når man sætter det ind på kontoen
  }
  
  float hentBelob(){
    float belob = 0;
    if(input.length() > 0){
      belob =  Float.parseFloat(input.toString());
// denne kode tilføjer beløbet der er blevet indtastet
    }
    
    return belob;
    
  }
}
