class demo {
  float x, y, c,w,l;

  demo() {

  // c = random(0, 255);
   y = random(width);
   w = 100;
   l = 100;
  }


  void shapes() {
    if (mouseX >= width/2) {
     // fill(c+20, 255, 255);
    } else {
     // fill(c, 255, 255);
    }
    for(float x=0;x<width;x=x+20)
    rect(x, y, w, l);
    println(y);
  }
}
