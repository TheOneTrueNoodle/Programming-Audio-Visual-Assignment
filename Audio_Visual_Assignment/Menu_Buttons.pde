class menu
{
  int songChoice = 0;

  int[] x = new int[3];
  int[] y = new int[3];
  String[] name = {"Pink Sand", "Tinnitus Dance", "Sus"};
  int rad = 40;

  void display()
  {
    for (int i = 0; i < 3; i++)
    {
      x[i] = 300 + 100 * i;
      y[i] = 475;
    }

    for (int i = 0; i < 3; i++)
    {
      if (dist(mouseX, mouseY, x[i], y[i]) < rad)
      {
        stroke(255);
        strokeWeight(5);
      } 
      else
      {
        noStroke();
      }
      
      fill(100);
      ellipse(x[i], y[i], rad*2, rad*2);
      
      fill(255);
      textSize(15);
      textAlign(CENTER);
      text(name[i], x[i], y[i]);
    }
  }

  void buttonClick()
  {
    for (int i = 0; i < 3; i++)
    {
      if ((dist(mouseX, mouseY, x[i], y[i]) < rad) & mousePressed && (mouseButton == LEFT))
      {
        songChoice = i+1;
        break;
      }
    }
  }

  void stopButton()
  {
    if (dist(mouseX, mouseY, 700, 475) < rad)
    {
      stroke(255);
      strokeWeight(5);
    } 
    else
    {
      noStroke();
    }
    
    fill(100);
    ellipse(700, 475, rad*2, rad*2);
    
    fill(255);
    textSize(15);
    textAlign(CENTER);
    text("Stop", 700, 475);

    if ((dist(mouseX, mouseY, 700, 475) < rad) & mousePressed && (mouseButton == LEFT))
    {
      B.stop = true;
    }
  }
}
