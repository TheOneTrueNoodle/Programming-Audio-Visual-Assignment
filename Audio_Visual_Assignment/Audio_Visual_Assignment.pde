import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player;
AudioBuffer buffer; 

menu A;
song B;

float tableWidth = 500, tableHeight = 250;
float tableXPos, tableYPos;

void setup()
{
  size(1000, 800);
  
  minim = new Minim(this);
  A = new menu();
  B = new song();
  
  tableXPos = (width / 2) - (tableWidth / 2);
  tableYPos = (height / 2) - (tableHeight / 2);
}

void draw()
{
  background(0);
  
  djTable();
  
  B.choice = A.songChoice;
  B.Choice();
  if (A.songChoice == 0)
  {
    A.display();
    A.buttonClick();
  }
  if (B.song != "empty" && B.playing == false)
  {
    play();
  }
  if (B.playing == true)
  {
    A.stopButton();
  }
  if (B.stop == true)
  {
    stopSong();
  }
}

void play()
{
  player = minim.loadFile(B.song, width);
  player.play();
  B.playing = true;
}

void stopSong()
{
  player.close();
  B.song = "empty";
  B.playing = false;
  A.songChoice = 0;
  B.choice = 0;
  B.stop = false;
}

void djTable()
{
  fill(128, 0, 0);
  rect(tableXPos, tableYPos, tableWidth, tableHeight);
  
  fill(50);
  rect(tableXPos + 10, tableYPos + 10, tableWidth - 20, tableHeight - 110);
}
