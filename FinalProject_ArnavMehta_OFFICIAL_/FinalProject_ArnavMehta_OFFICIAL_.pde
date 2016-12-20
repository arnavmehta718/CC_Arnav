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
PImage[] img = new PImage[180];
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
int currentvid = 0;
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
int timer = 5;
int song = 0;

void setup(){
  size(1920,1080);
  minim = new Minim(this);
  cam = new Capture(this,cameras[6]);
  cam.start();
  player1 = minim.loadFile("All We Know(CUT).mp3");
  player2 = minim.loadFile("Get Low(CUT).mp3");
  player3 = minim.loadFile("Juju On That Beat(CUT).mp3");
  
  cover1 = loadImage("juju.jpeg");
  cover2 = loadImage("getlow.jpg");
  cover3 = loadImage("allweknow.png");
  for(int y = 0; y < 180; y+=1){
    img[y] = loadImage("black.jpg");
  }
  vidcount.append(1);
  background(0);
}

void draw(){
  if(scene == 0){
    if(cam.available()){
      cam.read();
      background(random(255), random(255), random(255));
      image(cam,width/2,height/2,width-100,height-100);
    }
    if(counter == 0){
      if(song == 1){
         player1.loop();
       }
       else if(song == 2){
         player2.loop();
       }
       else{
         player3.loop();
       }
       counter+=1;
    }
    if((time%3 == 0) && (x < 20) &&  millis()-currentTime > 5000){
        saveFrame("data/"+ vid_counter +"Image"+icount+".jpg");
        icount+=1;
        x = x+1;
      }
    fill(255);
    textAlign(CENTER);
    textMode(CENTER);
    textSize(100);
    if(millis() -currentTime < 5000){
      text("Start Dancing",width/2, 200);
    
      text("Recording in: " + str(timer - (millis()- currentTime)/1000), width/2, 500);
    }
    time+=1;
    println(millis()-currentTime,time,x);
    
    if(x == 20 && (millis() - currentTime > 10000)){
      scene = 1;
      time = 0;
      icount = 0;
      counter = 0;
    } 
  }
  if(scene == 1){
    while (icount < 20){
      img[z] = loadImage(vid_counter + "Image"+icount+".jpg");
      z++;
      icount+=1;
    if(z == 179){
      z = 0;
    }
    photo = 0;
    scene = 2;
    
    println(vidcount);
  }
  }
   if(scene == 2){
     while(counter == 0){
       value1 = currentvid;
       value2 = int(random(vidcount.size()));
       value3 = int(random(vidcount.size()));
       value4 = int(random(vidcount.size()));

       println(value1,value2,value3,value4);
       counter+=1;
       background(100,200,0);
       s1 = value1*20;
       t1 = s1;
       s2 = value2*20;
       t2 = s2;
       s3 = value3*20;
       t3 = s3;
       s4 = value4*20;
       t4 = s4;

       if(song == 1){
         player1.loop();
       }
       else if(song == 2){
         player2.loop();
       }
       else{
         player3.loop();
       }
     }
    image(img[s1],width/4,(height-100)/4,width/2,(height-100)/2);
    s1+=1;
    if(s1 == (t1+19)){
      s1 = value1*20;
    }
    println(s1,t1);

    image(img[s2],(3*width)/4,(height-100)/4,width/2,(height-100)/2);
    s2+=1;
    if(s2 == (t2+19)){
      s2 = value2*20;
    }
    
    
    image(img[s3],(width)/4,(3*(height-100))/4,width/2,(height-100)/2);
    s3+=1;
    if(s3 == (t3+19)){
      s3 = value3*20;
    }
    
    
    image(img[s4],(3*width)/4,(3*(height-100))/4,width/2,(height-100)/2);
    s4+=1;
    if(s4 == (t4+19)){
      s4 = value4*20;
    }
    
    
    rectMode(CENTER);
    fill(0);
    rect(width/2,height-50,width,100);
    fill(fill1);
    rect(width/2, height-50,100,40);
    textMode(CENTER);
    textAlign(CENTER);
    textSize(12);
    fill(0);
    text("Create a gif",width/2,height-50);
    
    if(mouseX > (width/2 - 50) && mouseX < (width/2 + 50) && mouseY > height-70 && mouseY < height-30){
      fill1 = 200;
    }
    else{
      fill1 = 255;
    }
   }
  if(scene == 3){
    imageMode(CENTER);
    image(cover1,333.33,600,666.66,1000);
    image(cover2,1000,600,666.66,1000);
    image(cover3,1666.66,600,666.66,1000);
    
    fill(255);
    rectMode(CENTER);
    rect(width/2,50,width,100);
    fill(0);
    textMode(CENTER);
    textAlign(CENTER);
    textSize(20);
    text("Click here once you have selected your song.",width/2,50);
  }
}

void mousePressed(){
  if(mouseX > (width/2 - 50) && mouseX < (width/2 + 50) && mouseY > height-70 && mouseY < height-30 && scene == 2){
     scene = 3;
     x = 0;
     time = 0;
     icount = 0;
     vid_counter+=1;
     background(0);
     counter = 0;
     if(vidcount.size() < 9)
     vidcount.append(1);
     currentvid+=1;
     if(currentvid == 9){
       currentvid = 0;
     }
     
  }
  if(mouseY >= 0 && mouseY <= 100 && scene == 3){
    scene = 0;
    currentTime = millis();
  }
  else if(mouseX < width/3 && scene == 3){
    player1.pause();
    player1.rewind();
    player2.pause();
    player2.rewind();
    player3.loop();
    song = 3;
  }
  else if(mouseX > 2*(width/3) && scene == 3){
    player2.pause();
    player2.rewind();
    player3.pause();
    player3.rewind();
    player1.loop();
    song = 1;
  }
  else if(scene == 3){
    player1.pause();
    player1.rewind();
    player3.pause();
    player3.rewind();
    player2.loop();
    song = 2;
  }
}