import processing.video.*; 
import processing.sound.*;
Capture cam; 
PImage[] img = new PImage[50];
int x = 0;
int z =0;
int scene = 0;
int time = 0;
int icount = 0;
int fill1 = 255;
SoundFile song1;


void setup() { 
  size(1080, 720); 
  cam = new Capture(this);
  cam.start(); 
  song1= new SoundFile(this,"Dab.mp3");
  song1.play();
} 
 
void draw() {
  if(scene == 0){
    background(0);
    if((time > 0) && (x < 50)){
      if (cam.available()) { 
        // Reads the new frame
        cam.read();
        imageMode(CENTER);
        image(cam,540,360);
        saveFrame("data/"+"Image"+icount+".png");
        icount+=1;
        x = x+1;
      }
      
    }
    time+=1;
    
    if(x == 50){
      scene =1;
      time = 0;
    } 
  }
  if(scene == 1){
    while (z < 50){
      img[z] = loadImage("Image"+z+".png");
      z++;
    }
    z = 0;
    scene = 2;
    
  }
  if(scene == 2){
    
    
    if(z == 0){
      song1.stop();
      song1.play();
    }
  
    image(img[z/5],540,360);
    z+=1;
    if(z == 250){
      z = 0;
    }
    
    rectMode(CENTER);
    fill(fill1);
    rect(540,690,80,40);
    textMode(CENTER);
    textAlign(CENTER);
    fill(0);
    text("Reset",540,690);
    
    if(mouseX > 500 && mouseX < 580 && mouseY > 670 && mouseY < 710){
      fill1 = 200;
    }
    else{
      fill1 = 255;
    }
  }
  println (time);
} 


void mousePressed(){
  if(mouseX > 500 && mouseX < 580 && mouseY > 670 && mouseY < 710){
     scene = 0;
     x = 0;
     z = 0;
     time = 0;
     icount = 0;
     song1.stop();
     song1.play();
  }
}