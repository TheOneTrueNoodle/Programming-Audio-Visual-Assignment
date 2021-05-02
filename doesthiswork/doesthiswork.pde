

Colour c;
demo[] b;
void setup () {
  colorMode(HSB);
  size (1000, 1000);

  
  b = new demo[100];
  c = new Colour();
  

  for(int i=0; i<b.length; i++){
    b[i] = new demo();
  }
}



void draw () {
  background(255);
 
  for (int i=0; i< b.length;i++){
  
 // b[i].shapes();
   
  }
  c.colours();
}
