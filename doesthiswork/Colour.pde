class Colour {

  float c = 0;
  float h, s, b;
  int art =0;
  int woah=0;

  void colours() {
    int i = 0;
    if(c>=251||c<=-1){
      c=0;}
    if(art<0 || art>100){
    art =0;}
    if (keyPressed){
    if (key == CODED) {
      if (keyCode == UP) { 
        c=c+1;
      }
      if (keyCode == DOWN) {
        c = c-1;
      }
      if (keyCode == RIGHT) { 
        art++;
      }
      if (keyCode == LEFT) { 
        art--;
      }
    }
  }

    //println(c);
  
    if(art >=10 && art <20){
    for (int n =0; n<width; i++, n=n+50) { 
      fill(c+i, 255, 255);
      rect(n, 100, 25, 250);}
    }
    if(art <10 && art >=0){
      for (int n =0; n<width; i++, n=n+25) { 
      fill(c+i, 255, 255);
      rect(100, n, 250, 25);}
    }
    if(art >=20 && art <30){
      for (int n =0; n<width; i++, n=n+10) { 
      fill(c+i, 255, 255);
      rect(n, n, 250, n);}
    }
    if(art >=30 && art <40){
      for (int n =0; n<width; i++, n=n+10) {
      
      woah++;
      if(woah > 100)
      {woah = 0;}
      fill(c+i, 255, 255);
      rect(0, n+woah-100, width, n);
      println(woah);}
      
    
      
    }
    
     println(art);
    }
  
  }

  //
