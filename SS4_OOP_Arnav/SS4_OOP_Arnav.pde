//Artistic Expression
Sketch sketch1;
int len = 0;
int [] rectX = {50, 80, 1150, 50, 80};
int [] rectY = {1150, 1150, 1150, 50, 50};
void setup(){
  size(1200,1200);
  background(0);
  blendMode(ADD);
  rectMode(CENTER);
  fill(1);
  stroke(1);
  for(int i = 0; i < 255; i++){
    rect(600,600,len,len);
    len = len + 5;
  }
  sketch1 = new Sketch(0);
}

void draw(){
  sketch1.drawer();  
  fill(255);
  rect(rectX[0], rectY[0], 20, 20);
  rect(rectX[1], rectY[1], 20, 20);
  rect(rectX[2], rectY[2], 20, 20);
  rect(rectX[3], rectY[3], 20, 20);
  rect(rectX[4], rectY[4], 20, 20);
  
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

void mouseDragged(){
  filter(INVERT);
}

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

void mousePressed(){
  loop();
}