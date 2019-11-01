//Opgave 1. Skriv kommentarer i programmet, der forklarer hvad programmet gør!
//Opgave 2. Giv knappen og tekstfeltet et "bedre" visuelt udtryk
//Opgave 3. Lav kontoen om til et objekt
//Opgave 4. Opret flere konto-objekter
//Opgave 5. Opret flere knap-objekter
//Opgave 6. Forbind knapperne med hver konto , så du kan indsætte på de forskellige konti
//Udfordring 6. Prøv at udtænk en måde at visualisere konto bevægelser
//Udfordring 7. Prøv at udtænke en måde at give din konto en rente

Knap       kontoknap1 = new Knap();
Knap2      kontoknap2 = new Knap2();
TekstFelt  tekstFelt = new TekstFelt();
konto2 k2;
konto k1;

void setup(){
  
  size(1000,500);
  frameRate(60);
  k1=new konto();
  k2=new konto2();
  
}

void draw(){
  clear();
  background(0,150,90);
  kontoknap1.tegn();
  kontoknap1.registrerKlik();
  
  tekstFelt.tegn(); 
  
  if(kontoknap1.erKlikket()){
    konto1 = konto1 + tekstFelt.hentBelob();
    tekstFelt.ryd();
// Her bliver alle tabsne puttet ind i selve programmet, og man sætte ligesom det hele sammen
  }  
 {
   k1.udskrivKonto();
 }
 kontoknap2.tegn();
 kontoknap2.registrerKlik();
 
 if(kontoknap2.erKlikket()){
   konto2 = konto2 + tekstFelt.hentBelob();
   tekstFelt.ryd();
 }
 {
 k2.udskrivKonto2();
 }
}


void keyPressed(){
  tekstFelt.tilfojTegn();
}
