int f = 0; //<>//
int t = 0;
int p = 0;
int scene = 0;
int fill1 = 255;
int fill2 = 255;
int fill3 = 255;
int fill4 = 255;
int currentTime = 0;
int time = 0;
int pop = 0;
PImage brick; 
PImage Chef;
PImage bubb;
int line = 0;
int red = 0;
int green = 0;
int blue = 0;


void setup(){
  size(1200, 1200);
  background(255);
  brick = loadImage("bricks.png");
  Chef = loadImage("chefhat.png");
  bubb = loadImage("speechb.png");
}

void draw(){
  background(255);
  rectMode(CENTER);
  if(scene == 0){
     fill(0);
     rect(600,600, 1200,1200);
    fill(fill4);
    rect(600,600, 600,200,45);
    fill(0);
    stroke(0);
    textSize(36);
    text("Press Here to play",650,610,400,100); 
    fill(255);
    textSize(100);
    text("Journey Home!", 600, 200, 800, 200);
  }
  else if(scene == 1){
    strokeWeight(5);
    fill(100);
    rect(1900-t,900,3800,200);
    fill(50);
    rect(500-t,400,600,800);
    fill(75);
    rect(1100-t,500,600,600);
    fill(60);
    rect(1700-t,450,600,700);
    fill(30);
    rect(2300-t,550,600,500);
    for(int x = 215; x < 2600; x = x + 30){ 
      fill(f);
      rect(x-t,415,30,100);
      if(f == 0){
      f = 255;
      }
      else{
        f = 0;
      }
    }
    fill(255);
    rect(500-t, 680, 120, 240);
    rect(1100-t, 680, 120, 240);
    rect(1700-t, 680, 120, 240);
    rect(2300-t, 680, 120, 240);
    rect(315-t, 600, 180, 200);
    rect(685-t, 600, 180, 200);
    rect(315-t, 200, 180, 200);
    rect(685-t, 200, 180, 200);
    rect(915-t, 600, 180, 200);
    rect(1285-t, 600, 180, 200);
    rect(1515-t, 600, 180, 200);
    rect(1885-t, 600, 180, 200);
    rect(2115-t, 600, 180, 200);
    rect(2485-t, 600, 180, 200);
    textSize(120);
    fill(random(255), random(255), random(255));
    text("$1 PIZZA", 840-t, 310);
    
    if(t == 950){
    }
    else if(t == 350){ 
    }
    else if(t == 1400){
    }
    else{
      t = ((millis()-currentTime)/15)+time;
    }
    
    if(p == 450){
    }
    else if( p == 1150){
    }
    else if ( p == 1500){
    }
    else{
      p = ((millis()-currentTime)/15)+pop;
    }
  }
  else if(scene == 2){
    tint(255,150);
    image(brick, 0, 0,400,450);
    image(brick, 400, 0,400,450);
    image(brick, 800, 0,400,450);
    image(brick, 800, 450,400,450);
    image(brick, 800, 900,400,450);
    tint(255,255);
    image(Chef, 290,20, 250, 200);
    filter(GRAY);
    fill(0);
    rect(400,500, 800, 110, 10);
    rect(775,725,50,550,10,10,0,0);
    rect(400,750, 800, 30, 10);
    rect(600,1000,1200,2);
    fill(255);
    rect(600, 1100, 1200,200);
    strokeWeight(5);
    ellipse(200, 650, 150,150);
    ellipse(500, 650, 150,150);
    fill(0);
    strokeWeight(2);
    line(200,725,200,575);
    line(125,650,275,650);
    line(500,725,500,575);
    line(425,650,575,650);
    fill(0);
    ellipse(190,640, 12,12);
    ellipse(170,610, 12,12);
    ellipse(150,630, 12,12);
    ellipse(140,670, 12,12);
    ellipse(180,690, 12,12);
    ellipse(195,710, 12,12);
    ellipse(210,640, 12,12);
    ellipse(250,610, 12,12);
    ellipse(220,623, 12,12);
    ellipse(243,670, 12,12);
    ellipse(257,690, 12,12);
    ellipse(219,710, 12,12);
    
    ellipse(390, 250, 175,175);
    rect(390,400, 60, 200);
    rect(390, 445, 225, 140, 50);
    
    if(t == 4){
    }
    else if(t == 3){
    }
    else{
      t = ((millis()-currentTime)/1000)+time;
    }
    
    if(p == 4){
    }
    else if( p == 1){
    }
    else{
      p = ((millis()-currentTime)/1000)+pop;
    }
  }
  else if(scene == 3){
    fill(0);
    rect(600,600,1200,1200);
    fill(255);
    textSize(48);
    text("This is the Journey of you walking home.", 600,600,400, 400);
    
    if(t == 3){
    }

    else{
      t = ((millis()-currentTime)/1000)+time;
    }
    
    if(p == 3){
    }
    else{
      p = ((millis()-currentTime)/1000)+pop;
    }
  }
  
  
  if(p == 450 && scene == 1){
      fill(fill1);
      rect(300, 1100, 300, 180,50);
      fill(fill2);
      rect(900, 1100, 300, 180,50);
      fill(0);
      textSize(32);
      text("Go Eat Pizza", 200, 1100);
      text("Keep Walking", 800, 1100);
  }
   else if(p == 1150 && scene == 1){
      //fill(fill1);
      //rect(300, 1100, 300, 180,50);
      //fill(fill2);
      //rect(900, 1100, 300, 180,50);
      //fill(0);
      //textSize(32);
      //text("Buy Flowers", 200, 1100);
      //text("Keep Walking", 800, 1100);
      fill(fill3);
      rect(600, 1100, 300, 180,50);
      fill(0);
      textSize(32);
      text("Play Again", 500, 1100);
      image(bubb, 550, 100, 400, 200);
      textSize(20);
      text("you have reached home!",750, 170, 200, 70);
   }
   else if(p == 1 && scene == 2){
      fill(fill1);
      rect(300, 1100, 300, 180,50);
      fill(fill2);
      rect(900, 1100, 300, 180,50);
      fill(0);
      textSize(32);
      text("Cheese", 240, 1100);
      text("Pepperoni", 840, 1100);  
   }
   else if(p == 4 && scene == 2){
      scene = 1;
      time = 351;
      pop = 451;
   }
   else if( p == 3 && scene == 3){
     scene = 1;
     time = 0;
     pop = 0;
     currentTime = millis();
   }
      if(line == 0 && scene == 2){
      image(bubb, 550, 100, 400, 200);
      textSize(20);
      text("What Pizza do you like?",750, 170, 200, 70);
      println("done");
      }
      else if(line == 1 && scene == 2){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("Cheese it is!",750, 170, 200, 70);
      }
      else if(line == 2 && scene == 2){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("Pepperoni it is!",750, 170, 200, 70);
        
      }
   
   
    if(mouseX < 450 && mouseX > 150 && mouseY < 1190 && mouseY > 1010){
       fill1 = 200;
    }
    else{
       fill1 = 255;
    }
   
    if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010){
      fill2 = 200;
    }
    else{
      fill2 = 255;
    }
    
    if(mouseX < 750 && mouseX > 450 && mouseY < 1190 && mouseY > 1010){
      fill3 = 200;
    }
    else{
      fill3 = 255;
    }
    if(mouseX < 900 && mouseX > 300 && mouseY < 700 && mouseY > 500){
      fill4 = 200;
    }
    else{
      fill4 = 255;
    }
}



void mousePressed(){
   if(mouseX < 450 && mouseX > 150 && mouseY < 1190 && mouseY > 1010 && scene  == 1 && time == 0){
       scene = 2;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 0;
    }
    else if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010 && scene == 1 && time == 0){
      currentTime = millis();
       t = 351;
       p = 451;
       time = 351;
       pop = 451;
    }
    else if(mouseX < 450 && mouseX > 150 && mouseY < 1190 && mouseY > 1010 && scene  == 2 && time == 0){
       line = 1;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
    }
    else if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010 && scene == 2 && time == 0){
      line = 2;
      currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
    }
    else if(mouseX < 750 && mouseX > 450 && mouseY < 1190 && mouseY > 1010 && scene == 1 && time == 351){
      scene = 0;
      currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
    }
    else if(mouseX < 900 && mouseX > 300 && mouseY < 700 && mouseY > 500 && scene == 0){
      scene = 3;
      currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 0;
    }
  
}