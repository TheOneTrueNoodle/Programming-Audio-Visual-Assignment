class menu //<>//
{
  int songChoice = 0;

  int[] x = new int[3];
  int[] y = new int[3];
  String[] name = {"Slayer's Gate", "Bangarang", "Gay Town"};
  int rad = 50;

  void display()
  {
    for (int i = 0; i < 3; i++)
    {
      x[i] = 100 + 150 * i;
      y[i] = 100;
    }

    for (int i = 0; i < 3; i++)
    {
      if (dist(mouseX, mouseY, x[i], y[i]) < rad)
      {
        stroke(255);
        strokeWeight(5);
      } else
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
    if (dist(mouseX, mouseY, 425, 425) < rad)
    {
      stroke(255);
      strokeWeight(5);
    } else
    {
      noStroke();
    }
    fill(100);
    ellipse(425, 425, rad*2, rad*2);
    fill(255);
    textSize(15);
    textAlign(CENTER);
    text("Stop", 425, 425);

    if ((dist(mouseX, mouseY, 425, 425) < rad) & mousePressed && (mouseButton == LEFT))
    {
      B.stop = true;
    }
  }
}
