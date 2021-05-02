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
  c.colours();
  for (int i=0; i< b.length;i++){
  
  //b[i].shapes();
  
  }
}
