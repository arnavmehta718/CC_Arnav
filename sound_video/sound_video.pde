import ddf.minim.*;
import ddf.minim.ugens.*;
import processing.video.*;
import processing.sound.*;
// Size of each cell in the grid
int cellSize = 2;
// Number of columns and rows in our system
int cols, rows;
// Variable for capture device
Capture video;
int scene = 0;
int fill1 = 255;
int fill2 = 255;
int fill3 = 255;
int fill4 = 255;
int fill5 = 255;
int fill6 = 255;
int fill7 = 255;
int fill8 = 0;
int fill9 = 255;
int fill10 = 255;
int change = 0;
SoundFile music1;
SoundFile music2;
SoundFile music3;
SoundFile music4;
SoundFile music5;
SoundFile music6;
SoundFile music7;
FilePlayer player1;
int m1=0;
int m2=0;
int m3=0;
int m4=0;
int m5=0;
int m6=0;
int Current =0;
int time = 0;
Minim minim;
AudioInput in;
AudioRecorder recorder;
AudioOutput out;

void setup() {
  size(1280, 960);
  frameRate(30);
  cols = width / cellSize;
  rows = height / cellSize;
  colorMode(RGB, 255, 255, 255, 100);
  music1 = new SoundFile(this, "BD0000.mp3");
  music2 = new SoundFile(this, "CL.mp3");
  music3 = new SoundFile(this, "CY0000.mp3");
  music4 = new SoundFile(this, "OH00.mp3");
  music5 = new SoundFile(this, "Cymbals_StayOnBeat (1).wav");
  music6 = new SoundFile(this, "SD0010.mp3");
  minim = new Minim(this);
  in = minim.getLineIn(Minim.STEREO, 512);
  recorder = minim.createRecorder(in, "s.wav");
  out = minim.getLineOut( Minim.STEREO );
  
  // This the default video input, see the GettingStartedCapture 
  // example if it creates an error
  video = new Capture(this, 640, 480);
  // Start capturing the images from the camera
  video.start();  
  
  background(255);
}


void draw() { 
  if(scene == 1){
    if (video.available()) {
      video.read();
      video.loadPixels(); 
      for (int i = 0; i < cols; i++) {
        for (int j = 0; j < rows; j++) {
          int x = i*cellSize;
          int y = j*cellSize;
          color c = video.pixels[i + j*video.width]; 
          fill(c);
          stroke(0);
          rectMode(CORNER);
          rect(width-x-2,y,cellSize,cellSize);
        }
      }
      }
    player1.patch(out);
    player1.play();
    fill(fill10);
    rectMode(CENTER);
    rect(width*.075,height*.925, width*.1, height*.05);
    fill(0);
    textAlign(CENTER);
    text("Go back", width*.075,height*.925);
  }
  if(scene == 0){
    background(255);
    rectMode(CENTER);
    textAlign(LEFT);
    fill(0);
    rect(width/2,height/2, width*0.8, height*0.8,30);
    fill(fill1);
    rect(width/2, height*0.4,height*.25, height*0.25,15);
    fill(fill2);
    rect(width/2, height*0.7,height*.25, height*0.25,15);
    fill(fill3);
    rect(width/4, height*0.4,height*.25, height*0.25,15);
    fill(fill4);
    rect(width/4, height*0.7,height*.25, height*0.25,15);
    fill(fill5);
    rect(width*.75, height*0.4,height*.25, height*0.25,15);
    fill(fill6);
    rect(width*.75, height*0.7,height*.25, height*0.25,15);
    fill(255);
    stroke(255);
    line(width*0.1,height*0.25,width*0.9,height*0.25);
    textSize(50);
    text("Music Launch Pad", width*.14, height*.2);
    fill(fill7);
    textSize(18);
    if(change ==0){
      text("Press here to record", width*.75, height*.24);
    }
    else{
      fill(fill9);
      text("Press here to stop",width*.75, height*.22);
    }
    fill(fill8);
    time = (millis() - Current)/1000;
    text("Time in seconds "+time, width*.75, height*.20);
    
    
    
  }
  
  if(mouseX < width/2+((height*.25)/2) && mouseX > width/2-((height*.25)/2) && mouseY < height*0.4+((height*.25)/2) && mouseY > height*0.4-((height*.25)/2)){
    fill1 = #FF2929;
  }
  else{
    fill1 = 255;
  }
  if(mouseX < width/2+((height*.25)/2) && mouseX > width/2-((height*.25)/2) && mouseY < height*0.7+((height*.25)/2) && mouseY > height*0.7-((height*.25)/2)){
    fill2 = #6129FF;
  }
  else{
    fill2 = 255;
  }
  if(mouseX < width/4+((height*.25)/2) && mouseX > width/4-((height*.25)/2) && mouseY < height*0.4+((height*.25)/2) && mouseY > height*0.4-((height*.25)/2)){
    fill3 = #29FF43;
  }
  else{
    fill3 = 255;
  }
  if(mouseX < width/4+((height*.25)/2) && mouseX > width/4-((height*.25)/2) && mouseY < height*0.7+((height*.25)/2) && mouseY > height*0.7-((height*.25)/2)){
    fill4 = #FFEE29;
  }
  else{
    fill4 = 255;
  }
  if(mouseX < width*.75+((height*.25)/2) && mouseX > width*.75-((height*.25)/2) && mouseY < height*0.4+((height*.25)/2) && mouseY > height*0.4-((height*.25)/2)){
    fill5 = #FF5829;
  }
  else{
    fill5 = 255;
  }
  if(mouseX < width*.75+((height*.25)/2) && mouseX > width*.75-((height*.25)/2) && mouseY < height*0.7+((height*.25)/2) && mouseY > height*0.7-((height*.25)/2)){
    fill6 = #FF29F1;
  }
  else{
    fill6 = 255;
  }
  if(mouseX < width*.9 && mouseX > width*.75 && mouseY < height*0.24 && mouseY > height*0.22){
    fill7 = #FF29F1;
  }
  else{
    fill7 = 255;
  }
  if(mouseX < width*.9 && mouseX > width*.75 && mouseY < height*0.22 && mouseY > height*0.20 && change == 1){
    fill9 = #FF29F1;
  }
  else{
    fill9 = 255;
  }
  if(mouseX < width*.125 && mouseX > width*.025 && mouseY < height*.950 && mouseY > height*.900){
    fill10 = 200;
  }
  else{
    fill10 = 255;
  }

}
void mousePressed() {
  if(mouseX < width/2+((height*.25)/2) && mouseX > width/2-((height*.25)/2) && mouseY < height*0.4+((height*.25)/2) && mouseY > height*0.4-((height*.25)/2) && scene == 0){
    music1.play(); 
  }  
  if(mouseX < width/2+((height*.25)/2) && mouseX > width/2-((height*.25)/2) && mouseY < height*0.7+((height*.25)/2) && mouseY > height*0.7-((height*.25)/2) && scene == 0){
    music2.play(); 
  }
  if(mouseX < width/4+((height*.25)/2) && mouseX > width/4-((height*.25)/2) && mouseY < height*0.4+((height*.25)/2) && mouseY > height*0.4-((height*.25)/2) && scene == 0){
    music3.play(); 
  }
  if(mouseX < width/4+((height*.25)/2) && mouseX > width/4-((height*.25)/2) && mouseY < height*0.7+((height*.25)/2) && mouseY > height*0.7-((height*.25)/2) && scene == 0){
    music4.play(); 
  }
  if(mouseX < width*.75+((height*.25)/2) && mouseX > width*.75-((height*.25)/2) && mouseY < height*0.4+((height*.25)/2) && mouseY > height*0.4-((height*.25)/2) && scene == 0){
    music5.play(); 
  }
  if(mouseX < width*.75+((height*.25)/2) && mouseX > width*.75-((height*.25)/2) && mouseY < height*0.7+((height*.25)/2) && mouseY > height*0.7-((height*.25)/2) && scene == 0){
     music6.play(); 
  }
  if(mouseX < width*.9 && mouseX > width*.75 && mouseY < height*0.24 && mouseY > height*0.22 && scene==0){
     Current= millis();
     fill8 =255;
     recorder.beginRecord();
     change = 1;
  }
  if(mouseX < width*.9 && mouseX > width*.75 && mouseY < height*0.22 && mouseY > height*0.20 && scene==0 && change == 1){
     Current= millis();
     fill8 =0;
     recorder.endRecord();
     player1 = new FilePlayer(recorder.save());
     scene = 1;
  }
  if(mouseX < width*.125 && mouseX > width*.025 && mouseY < height*.950 && mouseY > height*.900){
    scene = 0;
    change = 0;
    player1.close();
  }

}