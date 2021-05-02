class Menu
{
  int songChoice = 0;
  
  int[] x = new int[3];
  int[] y = new int[3];
  String[] songName = {"1", "2", "3"};
  int radius = 40;
  
  void button()
  {
    for (int i = 0; i < 3; i++)
    {
      x[i] = 310 + 100 * i;
      y[i] = 333;
    }
    
    for (int i = 0; i < 3; i++)
    {
      if (dist(mouseX, mouseY, x[i], y[i]) < radius)
      {
         stroke(255);
         strokeWeight(5);
      }
      else
      {
        noStroke();
      }
      
      fill(100);
      ellipse(x[i], y[i], radius * 2, radius * 2);
      
      fill(255);
      textSize(30);
      textAlign(CENTER, CENTER);
      text(songName[i], x[i], y[i]);
    }
  }
  
  void buttonClick()
  {
    for (int i = 0; i < 3; i++)
    {
      if ((dist(mouseX, mouseY, x[i], y[i]) < radius) & mousePressed && (mouseButton == LEFT))
      {
        songChoice = i+1;
        break;
      }
    }
  }
  
  void stopButton()
  {
    if (dist(mouseX, mouseY, 700, 475) < radius)
    {
      stroke(255);
      strokeWeight(5);
    }
    else
    {
      noStroke();
    }
    
    fill(100);
    ellipse(700, 475, radius * 2, radius * 2);
    
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Stop", 700, 475);
    
    if ((dist(mouseX, mouseY, 700, 475) < radius) & mousePressed && (mouseButton == LEFT))
    {
      song.isStopped = true;
    }
  }
}
