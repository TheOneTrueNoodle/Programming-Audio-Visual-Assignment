import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim; // Minim library
AudioPlayer player; // Audio player
AudioBuffer buffer; // Audio buffer

Menu menu;
Song song;

float tableWidth = 500, tableHeight = 250;
float tableXPos, tableYPos;

void setup()
{
  size(1024, 512);
  
  colorMode(HSB);
  
  minim = new Minim(this);
  menu = new Menu();
  song = new Song();
  
  tableXPos = (width / 2) - (tableWidth / 2);
  tableYPos = (height / 2) - (tableHeight / 2);
}

void draw()
{
  background(50);
  
  djTable();
  
  song.choice = menu.songChoice;
  song.Choice();
  
  if (menu.songChoice == 0)
  {
    menu.button();
    menu.buttonClick();
  }
  
  if (song.song != "empty" && song.isPlaying == false)
  {
    playSong();
  }
  
  if (song.isPlaying == true)
  {
    menu.stopButton();
  }
  
  if (song.isStopped == true)
  {
    stopSong();
  }
}

void playSong()
{
  player = minim.loadFile(song.song, width);
  player.play();
  song.isPlaying = true;
}

void stopSong()
{
  player.close();
  song.song = "empty";
  song.isPlaying = false;
  menu.songChoice = 0;
  song.choice = 0;
  song.isStopped = false;
}

void djTable()
{
  fill(128, 0, 0);
  rect(tableXPos, tableYPos, tableWidth, tableHeight);
  
  fill(50);
  rect(tableXPos + 10, tableYPos + 10, tableWidth - 20, tableHeight - 110);
}
