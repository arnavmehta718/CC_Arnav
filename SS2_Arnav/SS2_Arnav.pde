// Short story 2
// use the mouse to drag the box towards the bottles and press the left or right trigger to click
//one all bottles are borken click on the stop button to see your time
// to restart bring mouse to start and press and key

float wide = 100;
float high = 100;
float R1 = 54;
float R2 = 54;
float R3 = 54;
float R4 = 54;
float R5 = 54;
float R6 = 54;
float R7 = 54;
float G1 = 75;
float G2 = 75;
float G3 = 75;
float G4 = 75;
float G5 = 75;
float G6 = 75;
float G7 = 75;
float B1 = 103;
float B2 = 103;
float B3 = 103;
float B4 = 103;
float B5 = 103;
float B6 = 103;
float B7 = 103;
float m = 0;
float sec = 0;
float prev= 0;


void setup(){
  size(1000, 1000);
  background(255, 3, 3);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw(){
  background(255, 3, 3);
  
  fill(178, 140, 68);
  stroke(178, 140, 68);
  
  rect(500, 600, 800, 50, 15, 15, 0, 0);
  rect(125, 800, 50, 400);
  rect(875, 800, 50, 400);
  rect(275, 500, 30, 250, 15, 0, 0, 0);
  rect(725, 500, 30, 250, 0, 15, 0, 0);
  rect(500, 390, 450, 30);  
  
  fill(54, 75, 103);
  stroke(54, 75, 103);
  
  rect(500, 540, 30, 70, 15, 15, 5, 5);
  rect(500, 495, 10, 40, 15, 15, 0, 0);
  rect(350, 540, 30, 70, 15, 15, 5, 5);
  rect(350, 495, 10, 40, 15, 15, 0, 0);
  rect(200, 540, 30, 70, 15, 15, 5, 5);
  rect(200, 495, 10, 40, 15, 15, 0, 0);
  rect(650, 540, 30, 70, 15, 15, 5, 5);
  rect(650, 495, 10, 40, 15, 15, 0, 0);
  rect(800, 540, 30, 70, 15, 15, 5, 5);
  rect(800, 495, 10, 40, 15, 15, 0, 0);
  rect(425, 340, 30, 70, 15, 15, 5, 5);
  rect(425, 295, 10, 40, 15, 15, 0, 0);
  rect(575, 340, 30, 70, 15, 15, 5, 5);
  rect(575, 295, 10, 40, 15, 15, 0, 0);
  
  
  fill(R1, G1, B1);
  stroke(R1, G1, B1);
  rect(500, 515, 30, 30, 15, 15, 0, 0);
  rect(500, 495, 10, 40, 15, 15, 0, 0);
  triangle(485, 530, 490, 545, 495, 530);  
  triangle(495, 530, 505, 530, 500, 545); 
  triangle(505, 530, 515, 530, 510, 545);
  
  fill(R2, G2, B2);
  stroke(R2, G2, B2);
  rect(350, 515, 30, 30, 15, 15, 0, 0);
  rect(350, 495, 10, 40, 15, 15, 0, 0);
  triangle(335, 530, 340, 545, 345, 530);  
  triangle(345, 530, 355, 530, 350, 545); 
  triangle(355, 530, 365, 530, 360, 545);
  
  fill(R3, G3, B3);
  stroke(R3, G3, B3);
  rect(200, 515, 30, 30, 15, 15, 0, 0);
  rect(200, 495, 10, 40, 15, 15, 0, 0);
  triangle(185, 530, 190, 545, 195, 530);  
  triangle(195, 530, 205, 530, 200, 545); 
  triangle(205, 530, 215, 530, 210, 545);
  
  fill(R4, G4, B4);
  stroke(R4, G4, B4);
  rect(650, 515, 30, 30, 15, 15, 0, 0);
  rect(650, 495, 10, 40, 15, 15, 0, 0);
  triangle(635, 530, 640, 545, 645, 530);  
  triangle(645, 530, 655, 530, 650, 545); 
  triangle(655, 530, 665, 530, 660, 545);
  
  fill(R5, G5, B5);
  stroke(R5, G5, B5);
  rect(800, 515, 30, 30, 15, 15, 0, 0);
  rect(800, 495, 10, 40, 15, 15, 0, 0);
  triangle(785, 530, 790, 545, 795, 530);  
  triangle(795, 530, 805, 530, 800, 545); 
  triangle(805, 530, 815, 530, 810, 545);
  
  fill(R6, G6, B6);
  stroke(R6, G6, B6);
  rect(425, 315, 30, 30, 15, 15, 0, 0);
  rect(425, 295, 10, 40, 15, 15, 0, 0);
  triangle(410, 330, 415, 345, 420, 330);  
  triangle(420, 330, 430, 330, 425, 345); 
  triangle(430, 330, 440, 330, 435, 345);
  
  fill(R7, G7, B7);
  stroke(R7, G7, B7);
  rect(575, 315, 30, 30, 15, 15, 0, 0);
  rect(575, 295, 10, 40, 15, 15, 0, 0);
  triangle(560, 330, 565, 345, 570, 330);  
  triangle(570, 330, 580, 330, 575, 345); 
  triangle(580, 330, 590, 330, 585, 345);
  
  stroke(0);
  noFill();
  rect(mouseX, mouseY, wide, wide);
  rect(500, 950, 100, 100);
  rect(500, 50, 100, 100);
  //wide++;
  //high++;
  
  String s = "Starting";
  String w = "stop";
  String space = "Press any key to play. Goal is to brake all the bottles in the fastest time.";
  stroke(0);
  fill(255);
  textSize(24);
  text(s, 455, 30);  // Text wraps within text box
  text(space, 200, 150, 200, 200);
  text(w, 475, 950);  // Text wraps within text box
  
  m = millis();
  sec = m/1000;
  text(sec - prev, 900, 50);

  line(0, 0, mouseX-(wide/2), mouseY-(wide/2));
  line(0, 1000, mouseX-(wide/2), mouseY+(wide/2));
  line(1000, 1000, mouseX+(wide/2), mouseY+(wide/2));
  line(1000, 0, mouseX+(wide/2), mouseY-(wide/2));
}
  
void mousePressed(){
  if(mouseX >= 485 && mouseX <= 515 && mouseY >= 475 && mouseY <= 775)
  {
    R1 = 255;
    G1 = 3;
    B1 = 3;
  }
  else if(mouseX > 335 && mouseX < 365 && mouseY > 475 && mouseY < 775)
  {
    R2 = 255;
    G2 = 3;
    B2 = 3;
  }
  else if(mouseX > 185 && mouseX < 215 && mouseY > 475 && mouseY < 775)
  {
    R3 = 255;
    G3 = 3;
    B3 = 3;
  }
  else if(mouseX > 635 && mouseX < 665 && mouseY > 475 && mouseY < 775)
  {
    R4 = 255;
    G4 = 3;
    B4 = 3;
  }
  else if(mouseX > 785 && mouseX < 815 && mouseY > 475 && mouseY < 775)
  {
    R5 = 255;
    G5 = 3;
    B5 = 3;
  }
  else if(mouseX > 410 && mouseX < 440 && mouseY > 275 && mouseY < 575)
  {
    R6 = 255;
    G6 = 3;
    B6 = 3;
  }
  else if(mouseX > 560 && mouseX < 580 && mouseY > 275 && mouseY < 575)
  {
    R7 = 255;
    G7 = 3;
    B7 = 3;
  }
  else if(mouseX > 450 && mouseX < 550 && mouseY > 900 && mouseY < 1000 && R1 == 255 && R2 == 255 && R3 == 255 && R4 == 255 && R5 == 255 && R6 == 255 && R7 == 255)
  {
    noLoop();
  }
}
void keyPressed(){
    background(255, 3, 3);
    R1 = 54;
    R2 = 54;
    R3 = 54;
    R4 = 54;
    R5 = 54;
    R6 = 54;
    R7 = 54;
    
    G1 = 75;
    G2 = 75; 
    G3 = 75;
    G4 = 75;
    G5 = 75;
    G6 = 75;
    G7 = 75;
    
    B1 = 103;
    B2 = 103; 
    B3 = 103; 
    B4 = 103; 
    B5 = 103; 
    B6 = 103; 
    B7 = 103; 
    
    prev = millis()/1000;
    
    loop();
}
  
  