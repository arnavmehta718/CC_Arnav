//Artistic Expression
Sketch sketch1;
int len = 0;
int [] rectX = {50, 80, 1150, 50, 80};
int [] rectY = {1150, 1150, 1150, 50, 50};
Rectang[] rects;

void setup(){
  size(1200,1200);
  background(0);
  blendMode(ADD);
  rectMode(CENTER);
  fill(1);
  stroke(1);
  rects = new Rectang[5];
  
  for (int i = 0; i < 255; i++){
    rect(600,600,len,len);
    len = len + 5;
  }
  sketch1 = new Sketch(0);
  
  for(int d = 0; d <5; d++){
    rects[d] = new Rectang(rectX[d], rectY[d], 20);
  }
 
}

//
void draw(){
  sketch1.drawer();
  for(Rectang rec : rects) {
    rec.display();
  }
  
  
  // creates the filtiration change for the box hovers
  len = 0;
  filter(ERODE);
  if(mouseX >= 40 && mouseX <= 60 && mouseY >= 1140 && mouseY <= 1160)
  {
    filter(DILATE);
  }
  else if(mouseX >= 70 && mouseX <= 90 && mouseY >= 1140 && mouseY <= 1160)
  {
    filter(GRAY);
  }
  else if(mouseX >= 40 && mouseX <= 60 && mouseY >= 40 && mouseY <= 60)
  {
    filter(DILATE);
  }
  else if(mouseX >= 70 && mouseX <= 90 && mouseY >= 40 && mouseY <= 60)
  {
    filter(GRAY);
  }
  else if(mouseX >= 1140 && mouseX <= 1160 && mouseY >= 1140 && mouseY <= 1160)
  {
   noLoop();
  }
}
// invert the coloring of the objects
void mouseDragged(){
  filter(INVERT);
}
//resets the object once the screen is frozen, or freezes program when called while looping
void keyPressed(){
  background(0);
  blendMode(ADD);
  rectMode(CENTER);
  fill(1);
  stroke(1);
  for(int i = 0; i < 255; i++){
    rect(600,600,len,len);
    len = len + 5;
  }
    loop();
}
//resets the object once the screen is frozen, or freezes program when called while looping
void mousePressed(){
  loop();
}