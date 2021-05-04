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

float c = 0;  // start of colour class integrated so its function so its easier for me :)
float h, s, b;
int art =0;
float woah=0;
float fart=0;
float oomph=0;

//float[] lerpedBuffer;


float tableWidth = 500, tableHeight = 250;
float tableXPos, tableYPos;


void setup()
{
  
  colorMode(HSB);
  size(1000, 800);

  minim = new Minim(this);
  A = new menu();
  B = new song();
  

  tableXPos = (width / 2) - (tableWidth / 2);
  tableYPos = (height / 2) - (tableHeight / 2);
 // lerpedBuffer = new float[width];
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
    buffer=player.mix;
    colours();
    noFill();
    noStroke();
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
  fill(255, 255, 128);
  rect(tableXPos, tableYPos, tableWidth, tableHeight);

  fill(50);
  rect(tableXPos + 10, tableYPos + 10, tableWidth - 20, tableHeight - 110);
}

void colours() {
  noStroke();
  int i = 0;
  float sample = buffer.get(i) * (height / 4);
  if (c>=251||c<=-1) {
    c=0;
  }
  if (art<0 || art>70) {
    art =0;
  }
  if (keyPressed) {
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

  if (art >=-10 && art <10) {
    for (int n =0; n<tableWidth-20; i++, n=n+5) { 
      fill(c+i+sample/3, 255, 255);
      rect(tableXPos+10+n, tableYPos+10, 5, 150);
     
    }
  }
  if (art >=10 && art <20) {
    for (int n =0; n <tableWidth-20; i++, n=n+20) { 
    float m = map(i, 0, buffer.size(), 0, 255);
     //stroke(i, 255, 255);
     fill(c+i, 255, 255);
     rect(tableXPos+10+n+5, (tableYPos+100)-sample/2,10, 50+ sample/2);

    }
  }
  if (art >=20 && art <30) {
    for (int n =0; n<tableWidth-20; i++, n=n+3) { 
      fill(c+i, 255, 255);
      stroke(c+i/3, 255, 255);
      line(tableXPos+10+n, (tableYPos+100)-sample/2,tableXPos+10+n,(tableYPos+100)+ sample/2);;
    }
  }
  if (art >=30 && art <40) {
    for (int n =0; n<tableWidth-20; i++, n=n+5) {

      woah--;
      if (woah < 0)
      {
        woah = 100;
      }
      fill(c+i+sample/3, 255, 255);
      rect(tableXPos+10, tableYPos+woah+10, tableWidth-20, 40);
      println(woah);
    }
  }
  if (art >=40 && art <50) {
    for (int n =0; n<tableWidth-20; i++, n=n+100) { 
      fill(c+(i)*10+sample/5, 255, 255);
      ellipse(n+tableXPos+50,tableYPos+80, 50+sample/3, 50+sample/3);
    }
  }
    if (art >=50 && art <60) {
    for (int n =0; n<tableWidth-20; i++, n=n+20) { 
      fill(c+i+sample/5, 255, 255);
      ellipse(n+tableXPos+20,tableYPos+20, 5+sample/5, 5+sample/5);
      ellipse(n+tableXPos+20,tableYPos+40, 5+sample/5, 5+sample/5);
      ellipse(n+tableXPos+20,tableYPos+60, 5+sample/5, 5+sample/5);
      ellipse(n+tableXPos+20,tableYPos+80, 5+sample/5, 5+sample/5);
      ellipse(n+tableXPos+20,tableYPos+100, 5+sample/5, 5+sample/5);
      ellipse(n+tableXPos+20,tableYPos+120, 5+sample/5, 5+sample/5);
      ellipse(n+tableXPos+20,tableYPos+140, 5+sample/5, 5+sample/5);
    
    }
  }
  if (art >=60 && art <70) {
    for (float n =0,f=0; n<tableWidth-20; i++, n=n+20) { 
      
      oomph=oomph+0.5;
      if(oomph>140){
        fart =1;
      }
      if(fart==1){
        oomph=oomph-1;
      }
      if(oomph<0){
        fart=0;}
      fill(c+i+sample/5, 255, 255);
      ellipse(n+tableXPos+20,tableYPos+10+oomph, 5+sample/5, 5+sample/5);
      ellipse(n+tableXPos+20,tableYPos+150-oomph, 5+sample/5, 5+sample/5);
      
      
    }
  }
  println(c);
  println(art);
}
