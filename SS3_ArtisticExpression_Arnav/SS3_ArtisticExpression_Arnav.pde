//Artistic Expression

int len = 0;
int var = 0;
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
}

void draw(){
  blendMode(BLEND);
  tint(255, 127);
  if(var == 0)
  {
    fill(random(255), random(255), random(255), 33);
    triangle(600, 600, mouseX, mouseY, random(1200), random(1200));
  }    
  fill(255);
  rect(50, 1150, 20, 20);
  rect(80, 1150, 20, 20);
  rect(1150, 1150, 20, 20);
  rect(50, 50, 20, 20);
  rect(80, 50, 20, 20);
  
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