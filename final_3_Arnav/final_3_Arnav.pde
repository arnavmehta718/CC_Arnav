import processing.video.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player1;
AudioPlayer player2;
AudioPlayer player3;

Capture cam;  
String[] cameras = Capture.list();
int scene = 3;
int time = 0;
PImage[] img = new PImage[320];
PImage cover1 = new PImage();
PImage cover2 = new PImage();
PImage cover3 = new PImage();
int icount = 0;
int fill1 = 255;
int c = 0;
int x = 0;
int z = 0;
int s1 = 0;
int s2 = 0;
int s3 = 0;
int s4 = 0;
int s5 = 0;
int s6 = 0;
int s7 = 0;
int s8 = 0;
int s9 = 0;
int t1 = 0;
int t2 = 0;
int t3 = 0;
int t4 = 0;
int t5 = 0;
int t6 = 0;
int t7 = 0;
int t8 = 0;
int t9 = 0;
IntList vidcount = new IntList();
int vid_counter = 1;
int photo = 0;
int value1 = 0;
int value2 = 0;
int value3 = 0;
int value4 = 0;
int value5 = 0;
int value6 = 0;
int value7 = 0;
int value8 = 0;
int value9 = 0;
int counter = 0;
int currentTime = 0;

void setup(){
  size(2000,1100);
  minim = new Minim(this);
  cam = new Capture(this,cameras[6]);
  cam.start();
  player1 = minim.loadFile("chainsmokers.mp3");
  player2 = minim.loadFile("Lean And Dabb.mp3");
  player3 = minim.loadFile("Bonbon.mp3");
  
  cover1 = loadImage("bonbon.jpg");
  cover2 = loadImage("lean&dabb.jpg");
  cover3 = loadImage("allweknow.png");
  for(int y = 0; y < 10; y+=1){
    img[y] = loadImage("black.jpg");
  }
  for(int y = 10; y < 20; y+=1){
    img[y] = loadImage("red.jpg");
  }
  for(int y = 20; y < 30; y+=1){
    img[y] = loadImage("brown.jpg");
  }
  for(int y = 30; y < 40; y+=1){
    img[y] = loadImage("white.jpg");
  }
  for(int y = 40; y < 50; y+=1){
    img[y] = loadImage("purple.jpg");
  }
  for(int y = 50; y < 60; y+=1){
    img[y] = loadImage("green.png");
  }
  for(int y = 60; y < 70; y+=1){
    img[y] = loadImage("blue.png");
  }
  for(int y = 70; y < 80; y+=1){
    img[y] = loadImage("yellow.png");
  }
  for(int y = 80; y < 320; y+=1){
    img[y] = loadImage("orange.png");
  }
  vidcount.append(1);
  background(0);
}

void draw(){
  if(scene == 0){
    if(cam.available()){
      cam.read();
      background(0);
      imageMode(CENTER);
      image(cam,1000,500);
    }
    if((time%5 == 0) && (x < 20)){
        saveFrame("data/"+ vid_counter +"Image"+icount+".png");
        icount+=1;
        x = x+1;
      }
      
    time+=1;
    println(millis(),time,x);
    
    if(x == 20 && (millis() - currentTime > 10000)){
      scene = 1;
      time = 0;
      icount = 0;
    } 
  }
  if(scene == 1){
    while (icount < 20){
      img[z] = loadImage(vid_counter + "Image"+icount+".png");
      z++;
      icount+=1;
    if(z == 159){
      z = 0;
    }
    photo = 0;
    scene = 2;
    
    println(vidcount);
  }
  }
   if(scene == 2){
     while(counter == 0){
       value1 = int(random(vidcount.size()));
       value2 = int(random(vidcount.size()));
       value3 = int(random(vidcount.size()));
       value4 = int(random(vidcount.size()));
       value5 = int(random(vidcount.size()));
       value6 = int(random(vidcount.size()));
       value7 = int(random(vidcount.size()));
       value8 = int(random(vidcount.size()));
       value8 = int(random(vidcount.size()));
       println(value1,value2,value3,value4,value5,value6,value7,value8,value9);
       counter+=1;
       background(0);
       s1 = value1*20;
       t1 = s1;
       s2 = value2*20;
       t2 = s2;
       s3 = value3*20;
       t3 = s3;
       s4 = value4*20;
       t4 = s4;
       s5 = value5*20;
       t5 = s5;
       s6 = value6*20;
       t6 = s6;
       s7 = value7*20;
       t7 = s7;
       s8 = value8*20;
       t8 = s8;
       s9 = value9*20;
       t9 = s9;
     }
    image(img[s1],333.33,166.66,666.66,333.33);
    s1+=1;
    if(s1 == (t1+19)){
      s1 = value1*20;
    }
    println(s1,t1);

    image(img[s2],1000,166.66,666.66,333.33);
    s2+=1;
    if(s2 == (t2+19)){
      s2 = value2*20;
    }
    
    
    image(img[s3],1666.66,166.66,666.66,333.33);
    s3+=1;
    if(s3 == (t3+19)){
      s3 = value3*20;
    }
    
    
    image(img[s4],333.33,500,666.66,333.33);
    s4+=1;
    if(s4 == (t4+19)){
      s4 = value4*20;
    }
    
    
    image(img[s5],1000,500,666.66,333.33);
    s5+=1;
    if(s5 == (t5+19)){
      s5 = value5*20;
    }
    
    
    image(img[s6],1666.66,500,666.66,333.33);
    s6+=1;
    if(s6 == (t6+19)){
      s6 = value6*20;
    }
    
    
    image(img[s7],333.33,833.33,666.66,333.33);
    s7+=1;
    if(s7 == (t7+19)){
      s7 = value7*20;
    }
    
    
    image(img[s8],1000,833.33,666.66,333.33);
    s8+=1;
    if(s8 == (t8+19)){
      s8 = value8*20;
    }
    

    image(img[s9],1666.66,833.33,666.66,333.33);
    s9+=1;
    if(s9 == (t9+19)){
      s9 = value9*20;
    }
    
    rectMode(CENTER);
    fill(fill1);
    rect(1000, 900,80,40);
    textMode(CENTER);
    textAlign(CENTER);
    fill(0);
    text("Reset",1000,900);
    
    if(mouseX > 960 && mouseX < 1040 && mouseY > 880 && mouseY < 920){
      fill1 = 200;
    }
    else{
      fill1 = 255;
    }
   }
  if(scene == 3){
    imageMode(CENTER);
    image(cover1,333.33,500,666.66,1000);
    image(cover2,1000,500,666.66,1000);
    image(cover3,1666.66,500,666.66,1000);
    
    fill(255);
    rectMode(CENTER);
    rect(1000,150,2000,100);
    fill(0);
    textMode(CENTER);
    textAlign(CENTER);
    textSize(20);
    text("Click here once you have selected your song.",1000,150);
  }
}

void mousePressed(){
  if(mouseX > 960 && mouseX < 1040 && mouseY > 880 && mouseY < 920 && scene == 2){
     scene = 3;
     x = 0;
     time = 0;
     icount = 0;
     vid_counter+=1;
     background(0);
     counter = 0;
     if(vidcount.size() < 16)
     vidcount.append(1);
     
  }
  if(mouseY >= 100 && mouseY <= 200 && scene == 3){
    scene = 0;
    currentTime = millis();
  }
  else if(mouseX < width/3 && scene == 3){
    player1.pause();
    player1.rewind();
    player2.pause();
    player2.rewind();
    player3.loop();
  }
  else if(mouseX > 2*(width/3) && scene == 3){
    player2.pause();
    player2.rewind();
    player3.pause();
    player3.rewind();
    player1.loop();
  }
  else if(scene == 3){
    player1.pause();
    player1.rewind();
    player3.pause();
    player3.rewind();
    player2.loop();
  }
}