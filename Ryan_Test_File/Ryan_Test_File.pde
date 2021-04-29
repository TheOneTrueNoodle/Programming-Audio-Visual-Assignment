import ddf.minim.*; //<>//
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

void setup()
{
  size(500, 500);
  minim = new Minim(this);
  A = new menu();
  B = new song();
}

void draw()
{
  background(0);
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
