class demo {
  float x, y, c,w,l;

  demo() {
   x = random(0, width);
   y = random(0, height);
  // c = random(0, 255);
   w = random(50,200);
   l = random(50,200);
  }


  void colour() {
    if (mouseX >= width/2) {
     // fill(c+20, 255, 255);
    } else {
     // fill(c, 255, 255);
    }
    rect(x, y, w, l);
  }
}
