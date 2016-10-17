//The Game //<>//

int f = 0;
int t = 0;
int p = 0;
int items = 0;
int cash = 30;
float it = 0;
int yes = 0;
int scene = 2;
int fill1 = 255;
int fill2 = 255;
int fill3 = 255;
int fill4 = 255;
int fill5 = 255;
int currentTime = 0;
int time = 0;
int pop = 0;
PImage brick; 
PImage Chef;
PImage bubb;
PImage bubb2;
PImage tulip; 
PImage rose;
PImage grass;
PImage dark;
PImage white;
PImage van;
PImage cin;
PImage champ;
PImage wine;
PImage mhair;
PImage whair;
int line = 0;
int red = 0;
int green = 0;
int blue = 0;
int change = 0;
int armAngle = 185;
int angleChange = 1;
final int ANGLE_LIMIT = 260;
int legAngle = 300;
int legangleChange = 1;
final int leg_ANGLE_LIMIT = 375;



void setup(){
  size(1200, 1200);
  background(255);
  brick = loadImage("bricks.png");
  Chef = loadImage("chefhat.png");
  bubb = loadImage("speechb.png");
  bubb2 = loadImage("speechc.png");
  tulip = loadImage("tulip.png");
  rose = loadImage("rose.png");
  grass = loadImage("grass.png");
  dark = loadImage("darkchoco.jpg");
  white = loadImage("WhiteChoco.png");
  van = loadImage("vanilla.png");
  cin = loadImage("cinnamon.png");
  champ = loadImage("champ.png");
  wine = loadImage("wine.png");
  mhair = loadImage("hair.png");
  whair = loadImage("hair2.png");
  it = random(8);
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
    textAlign(CENTER);
    text("Hopes and Dreams", 600, 200, 800, 400);
  }
  else if(scene == 1){
    line = 0;
    stroke(0);
    strokeWeight(5);
    fill(100);
    rect(3000-t,900,6000,200);
    fill(50);
    rect(500-t,400,600,800);
    fill(75);
    rect(1100-t,500,600,600);
    fill(60);
    rect(1700-t,450,600,700);
    fill(30);
    rect(2300-t,500,600,600);
    fill(80);
    rect(2900-t,400,600,800);
    fill(90);
    rect(3500-t,450,600,700);
    for(int x = 215; x < 3800; x = x + 30){ 
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
    rect(2900-t, 680, 120, 240);
    rect(3500-t, 680, 120, 240);
    rect(315-t, 600, 180, 200);
    rect(685-t, 600, 180, 200);
    rect(315-t, 600, 180, 200);
    rect(685-t, 600, 180, 200);
    rect(915-t, 600, 180, 200);
    rect(1285-t, 600, 180, 200);
    rect(1515-t, 600, 180, 200);
    rect(1885-t, 600, 180, 200);
    rect(2115-t, 600, 180, 200);
    rect(2485-t, 600, 180, 200);
     rect(2715-t, 600, 180, 200);
      rect(3085-t, 600, 180, 200);
     rect(3315-t, 600, 180, 200);
      rect(3685-t, 600, 180, 200);
    
    textSize(120);
    textAlign(CENTER);
    fill(random(255), random(255), random(255));
    text("Flowers", 1100-t, 310);
    textSize(100);
    fill(random(255), random(255), random(255));
    text("Chocolates", 1700-t, 310);
    fill(random(255), random(255), random(255));
    text("Candles", 2300-t, 310);
    fill(random(255), random(255), random(255));
    text("Alcohol", 2900-t, 310);
    fill(#E15DFF);
    text("Condos", 3500-t, 310);
    
    fill(255);
    rect(1100,120, 180,130);
    stroke(0);
    fill(0);
    String cash2 = str(cash) + "$";
    text(cash2, 1100,155);
    
    textAlign(LEFT);
    
  if(t >= 350 && t <= 365){
      angleChange = 0;
      legangleChange =0;
    }
  else if(t >= 950 && t<= 965){ 
      angleChange = 0;
      legangleChange =0;
    }
  else if(t >= 1550 && t<= 1565){
      angleChange = 0;
      legangleChange =0;
    }
   else if(t >= 2150 && t<= 2165){ 
      angleChange = 0;
      legangleChange =0;
    }
  else if(t >= 2750 && t<= 2765){
      angleChange = 0;
      legangleChange =0;
    }
  else if(t >= 3350 && t<= 3365){
      angleChange = 0;
      legangleChange =0;
    }
  else{
      t = ((millis()-currentTime)/15)+time;
    }
    
    
    
  if(p >= 450 && p<= 465){
    }
  else if( p >= 1050 && p <= 1065){
    }
  else if ( p >= 1650 && p <= 1665){
    }
  else if( p >= 2250 && p <= 2265){
    }
  else if ( p >= 2850 && p <= 2865){
    }
  else if ( p >= 3450 && p <= 3465){
    }
  else{
      p = ((millis()-currentTime)/15)+pop;
    }
    
    pushMatrix();
  translate(300,800);
  drawRobot();
  armAngle += angleChange;
  legAngle += legangleChange;
  
  // if the arm has moved past its limit,
  // reverse direction and set within limits.
  if (armAngle > ANGLE_LIMIT || armAngle < 185)
  {
    angleChange = -angleChange;
    armAngle += angleChange;
  }
  
  if (legAngle > leg_ANGLE_LIMIT || legAngle < 300)
  {
    legangleChange = -legangleChange;
    legAngle += legangleChange;
  }
  popMatrix();
  
  stroke(0);
  strokeWeight(5);
  }
  else if(scene == 2){
    tint(255,150);
    image(brick, 0, 0,400,450);
    image(brick, 400, 0,400,450);
    image(brick, 800, 0,400,450);
    image(brick, 800, 450,400,450);
    image(brick, 800, 900,400,450);
    tint(255,255);
    image(rose, 500,575, 140, 140);
    image(tulip, 175,575, 140, 140);
    filter(GRAY);
    
    pushMatrix();
    translate(1000,800);
    scale(2.0);
    drawRobot();
    popMatrix();
    
    tint(255);
    if(change == 2){
      image(rose, 500,575, 140, 140);
    }
    else if(change == 1){
      image(tulip, 175,575, 140, 140);
    }
    
    fill(0);
    rect(400,500, 800, 110, 10);
    rect(775,725,50,550,10,10,0,0);
    rect(400,750, 800, 30, 10);
    rect(600,1000,1200,2);
    fill(255);
    rect(600, 1100, 1200,200);
    strokeWeight(5);
    
    
    fill(0);
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
    text("This is the Journey of you asking a girl out.", 600,600,400, 400);
    
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
  else if(scene == 4){
    tint(255,150);
    image(brick, 0, 0,400,450);
    image(brick, 400, 0,400,450);
    image(brick, 800, 0,400,450);
    image(brick, 800, 450,400,450);
    image(brick, 800, 900,400,450);
    tint(255,255);
    image(dark, 500,575, 140, 140);
    image(white, 175,575, 140, 140);
    image(Chef, 290,20, 250, 200);
    filter(GRAY);

    pushMatrix();
      translate(1000,800);
      scale(2.0);
      drawRobot();
      popMatrix();
    
    tint(255);
      if(change == 2){
        image(dark, 500,575, 140, 140);
      }
      else if(change == 1){
        image(white, 175,575, 140, 140);
      }

    fill(0);
    rect(400,500, 800, 110, 10);
    rect(775,725,50,550,10,10,0,0);
    rect(400,750, 800, 30, 10);
    rect(600,1000,1200,2);
    fill(255);
    rect(600, 1100, 1200,200);
    strokeWeight(5);
    
    
    fill(0);
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
  else if(scene == 5){
    tint(255,150);
    image(brick, 0, 0,400,450);
    image(brick, 400, 0,400,450);
    image(brick, 800, 0,400,450);
    image(brick, 800, 450,400,450);
    image(brick, 800, 900,400,450);
    tint(255,255);
    image(cin, 500,575, 140, 140);
    image(van, 175,575, 140, 140);
    filter(GRAY);

    pushMatrix();
      translate(1000,800);
      scale(2.0);
      drawRobot();
      popMatrix();
    
    tint(255);
      if(change == 2){
        image(cin, 500,575, 140, 140);
      }
      else if(change == 1){
        image(van, 175,575, 140, 140);
      }

    fill(0);
    rect(400,500, 800, 110, 10);
    rect(775,725,50,550,10,10,0,0);
    rect(400,750, 800, 30, 10);
    rect(600,1000,1200,2);
    fill(255);
    rect(600, 1100, 1200,200);
    strokeWeight(5);
    
    
    fill(0);
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
  else if(scene == 6){
    tint(255,150);
    image(brick, 0, 0,400,450);
    image(brick, 400, 0,400,450);
    image(brick, 800, 0,400,450);
    image(brick, 800, 450,400,450);
    image(brick, 800, 900,400,450);
    tint(255,255);
    image(wine, 500,575, 140, 140);
    image(champ, 175,575, 140, 140);
    filter(GRAY);

    pushMatrix();
      translate(1000,800);
      scale(2.0);
      drawRobot();
      popMatrix();
    
    tint(255);
      if(change == 2){
        image(wine, 500,575, 140, 140);
      }
      else if(change == 1){
        image(champ, 175,575, 140, 140);
      }

    fill(0);
    rect(400,500, 800, 110, 10);
    rect(775,725,50,550,10,10,0,0);
    rect(400,750, 800, 30, 10);
    rect(600,1000,1200,2);
    fill(255);
    rect(600, 1100, 1200,200);
    strokeWeight(5);
    
    
    fill(0);
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
  else if(scene ==7){
    fill(76);
    rect(600,500,1200,1000);
    fill(255);
    rect(600,700,300,600);
    fill(0);
    textAlign(CENTER);
    textSize(30);
    text("Room: 1205",600,600,200, 100);
    pushMatrix();
      translate(800,885);
      scale(1.5);
      drawRobot();
      popMatrix();
    pushMatrix();
      translate(600,885);
      scale(1.4);
      drawWRobot();
      popMatrix();
    if(p >12){
      scene = 8;
    }
    else if(p > 8){
      p = ((millis()-currentTime)/1000)+pop;
    }
    else if(p > 5){
       tint(255);
       image(bubb2,100, 200, 400, 300);
       fill(0);
        stroke(0);
       if(it >= 7){
         
         if(items >= 128){
            text("YES. I love you.", 300, 350,300,200);
         }
         else{
           text("Sorry. I dont like you?", 300, 350,300,200);
           yes = 1;
         }
       }
       else if(it >= 6){
         if(items >= 64){
            text("YES. I love you.", 300, 350,300,200);
         }
         else{
           text("Eww. I dont like you?", 300, 350,300,200);
           yes = 1;
         }
       }
       else if(it >= 5){
         if(items >= 32){
            text("YES. I love you.", 300, 350,300,200);
         }
         else{
           text("Sorry. I dont like you?", 300, 350,300,200);
           yes = 1;
         }
       }
       else if(it >= 4){
         if(items >= 16){
            text("YES. I've been waiting.", 300, 350,300,200);
         }
         else{
           text("Eww. I dont like you?", 300, 350,300,200);
           yes = 1;
         }
       }
       else if(it >= 3){
         if(items >= 8){
            text("YES. I love you.", 300, 350,300,200);
         }
         else{
           text("Sorry. I dont like you?", 300, 350,300,200);
           yes = 1;
         }
       }
       else if(it >= 2){
         if(items >= 4){
            text("YES. I love you.", 300, 350,300,200);
         }
         else{
           text("Eww. I dont like you?", 300, 350,300,200);
           yes = 1;
         }
       }
       else if(it >= 1){
         if(items >= 2){
            text("YES. I love you.", 300, 350,300,200);
         }
         else{
           text("Sorry. I dont like you?", 300, 350,300,200);
           yes = 1;
         }
       }
       else
         if(items >= 1){
            text("YES. I've been waiting.", 300, 350,300,200);
         }
         else{
           text("Eww. I dont like you?", 300, 350,300,200);
           yes = 1;
         }
         p = ((millis()-currentTime)/1000)+pop;
    }
    else if( p > 1){
       tint(255);
      image(bubb, 800, 200, 400, 300);
      fill(0);
      text("Will you go on a Date with me?", 1000, 350,300,200);
      p = ((millis()-currentTime)/1000)+pop;
    }
    else{
      p = ((millis()-currentTime)/1000)+pop;
    }
  }
  else if(scene == 8){
    fill(0);
    rect(600, 500, 1200,1000);
    fill(255);
    textSize(120);
    textAlign(CENTER,CENTER);
    text("GAME OVER", 600, 500, 1200, 1000);
     
    if(p >12){
      scene = 0;
    }
    else{
        p = ((millis()-currentTime)/1000)+pop;
    }
}

textAlign(CENTER);
  if(p >= 450 && p<= 465 && scene == 1){
      choose();
      fill(0);
      textSize(32);
      text("Buy Flowers", 300, 1100);
      text("Keep Walking", 900, 1100);
  }
  else if(p >= 1050 && p<= 1065 && scene == 1){
      choose();
      fill(0);
      textSize(32);
      text("Buy Chocolates", 300, 1100);
      text("Keep Walking", 900, 1100);
      }
   else if(p == 1 && scene == 2){
      choose();
      fill(0);
      textSize(32);
      text("Tulips(4$)", 300, 1100);
      text("Roses(5$)", 900, 1100);
      fill(fill5);
      rect(600,1095,150,50,50);
      textSize(18);
      fill(0);
      text("No thanks", 600, 1100);
   }
   else if(p == 4 && scene == 2){
      scene = 1;
      time = 366;
      pop = 466;
      angleChange = 1;
      legangleChange = 1;
   }
   else if(p == 1 && scene == 4){
      choose();
      fill(0);
      textSize(32);
      textAlign(CENTER);
      text("White Chocolate(4$)", 300, 1100, 250, 100);
      text("Dark Chocolate(6$)", 900, 1100, 250, 100); 
      fill(fill5);
      rect(600,1095,150,50,50);
      textSize(18);
      fill(0);
      text("No thanks", 600, 1100);
   }
   else if(p == 4 && scene == 4){
      scene = 1;
      time = 966;
      pop = 1066;
      angleChange = 1;
      legangleChange = 1;
   }
   else if(p >= 1650 && p<= 1665 && scene == 1){
      choose();
      fill(0);
      textSize(32);
      text("Buy Candles", 300, 1100);
      text("Keep Walking", 900, 1100);
      }
   else if(p == 1 && scene == 5){
      choose();
      fill(0);
      textSize(32);
      textAlign(CENTER);
      text("Vanilla(6$)", 300, 1100,250,100);
      text("Cinnamon(7$)", 900, 1100,250,100);
      fill(fill5);
      rect(600,1095,150,50,50);
      textSize(18);
      fill(0);
      text("No thanks", 600, 1100);
   }
   else if(p == 4 && scene == 5){
      scene = 1;
      time = 1566;
      pop = 1666;
      angleChange = 1;
      legangleChange = 1;
   }
   else if(p >= 2250 && p<= 2265 && scene == 1){
      choose();
      fill(0);
      textSize(32);
      text("Buy Alcohol", 300, 1100);
      text("Keep Walking", 900, 1100);
      }
   else if(p == 1 && scene == 6){
      choose();
      fill(0);
      textSize(32);
      textAlign(CENTER);
      text("Champange(20$)", 300, 1100,250,100);
      text("Wine(15$)", 900, 1100,250,100); 
      fill(fill5);
      rect(600,1095,150,50,50);
      textSize(18);
      fill(0);
      text("No thanks", 600, 1100);
      
   }
   else if(p == 4 && scene == 6){
      scene = 1;
      time = 2166;
      pop = 2266;
      angleChange = 1;
      legangleChange = 1;
   }
   else if(p >= 2850 && p<= 2865 && scene == 1){
      choose();
      fill(0);
      textSize(32);
      text("Ask her out.", 200, 1100);
      text("Go home.", 800, 1100);
      }
   else if( p == 3 && scene == 3){
     scene = 1;
     time = 0;
     pop = 0;
     currentTime = millis();
   }
   else if(p >= 10 && p<= 12 && scene == 7){
      fill(0);
      textSize(32);
      if(yes == 0){
      text("Success", 600, 1100);
      }
      else{
      text("Sorry",600, 1100);
    }
   }
   
   tint(255);
      if(line == 0 && scene == 2){
      image(bubb, 550, 100, 400, 200);
      textSize(20);
      text("How can I help you.",750, 190, 200, 70);
      }
      else if(line == 1 && scene == 2){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("A dozen Tulips it is.",750, 170, 200, 70);
        change = 1;
      }
      else if(line == 2 && scene == 2){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("A dozen Roses it is.",750, 170, 200, 70);
        change = 2;
      }
      else if(line == 3 && scene == 2){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("Maybe next time.",750, 170, 200, 70);
        change = 3;
      }
      else if(line == 0 && scene == 4){
      image(bubb, 550, 100, 400, 200);
      textSize(20);
      text("Would you like Chocolates.",750, 190, 200, 70);
      }
      else if(line == 1 && scene == 4){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("A box of White it is.",750, 170, 200, 70);
        change = 1;
      }
      else if(line == 2 && scene == 4){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("A box of Dark it is.",750, 170, 200, 70);
        change = 2;
      }
      else if(line == 3 && scene == 4){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("Maybe next time.",750, 170, 200, 70);
        change = 3;
      }
      else if(line == 0 && scene == 5){
      image(bubb, 550, 100, 400, 200);
      textSize(20);
      text("Would you like Candles.",750, 190, 200, 70);
      }
      else if(line == 1 && scene == 5){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("Vanilla candles it is.",750, 170, 200, 70);
        change = 1;
      }
      else if(line == 2 && scene == 5){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("Cinnamon candles it is.",750, 170, 200, 70);
        change = 2;
      }
      else if(line == 3 && scene == 5){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("Maybe next time.",750, 170, 200, 70);
        change = 3;
      }
      else if(line == 0 && scene == 6){
      image(bubb, 550, 100, 400, 200);
      textSize(20);
      text("Would you like to buy a drink.",750, 190, 200, 70);
      }
      else if(line == 1 && scene == 6){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("Champange it is.",750, 170, 200, 70);
        change = 1;
      }
      else if(line == 2 && scene == 6){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("Wine it is.",750, 170, 200, 70);
        change = 2;
      }
      else if(line == 3 && scene == 6){
        image(bubb, 550, 100, 400, 200);
        textSize(20);
        text("Maybe next time.",750, 170, 200, 70);
        change = 3;
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
    if(mouseX < 675 && mouseX > 525 && mouseY < 1125 && mouseY > 1075){
      fill5 = 200;
    }
    else{
      fill5 = 255;
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
       change = 0;
    }
    else if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010 && scene == 1 && time == 0){
      currentTime = millis();
       t = 366;
       p = 466;
       time = 366;
       pop = 466;
       angleChange = 1;
       legangleChange = 1;
    }
    else if(mouseX < 450 && mouseX > 150 && mouseY < 1190 && mouseY > 1010 && scene  == 2 && time == 0 && cash >= 4){
       line = 1;
       cash -= 4;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
       items += 1;
    }
    else if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010 && scene == 2 && time == 0 & cash >= 5){
      line = 2;
      cash -= 5;
      currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
       items += 2;
    }
    else if(mouseX < 900 && mouseX > 300 && mouseY < 700 && mouseY > 500 && scene == 0){
      scene = 3;
      currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 0;
    }
    else if(mouseX < 450 && mouseX > 150 && mouseY < 1190 && mouseY > 1010 && scene  == 1 && time == 366){
       scene = 4;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 0;
       change = 0;
    }
    else if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010 && scene == 1 && time == 366){
      currentTime = millis();
       t = 966;
       p = 1066;
       time = 966;
       pop = 1066;
       angleChange = 1;
      legangleChange = 1;
    }
    else if(mouseX < 450 && mouseX > 150 && mouseY < 1190 && mouseY > 1010 && scene  == 4 && time == 0 && cash >= 4){
       line = 1;
       cash -= 4;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
       items += 4;
    }
    else if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010 && scene == 4 && time == 0 && cash >= 6){
      line = 2;
      cash -= 6;
      currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
       items += 8;
    }
    else if(mouseX < 450 && mouseX > 150 && mouseY < 1190 && mouseY > 1010 && scene  == 1 && time == 966){
       scene = 5;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 0;
       change = 0;
    }
    else if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010 && scene == 1 && time == 966){
      currentTime = millis();
       t = 1566;
       p = 1666;
       time = 1566;
       pop = 1666;
       angleChange = 1;
      legangleChange = 1;
    }
    else if(mouseX < 450 && mouseX > 150 && mouseY < 1190 && mouseY > 1010 && scene  == 5 && time == 0 && cash >= 6){
       line = 1;
       cash -= 6;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
       items += 16;
    }
    else if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010 && scene == 5 && time == 0 && cash >= 7){
      line = 2;
      cash -= 7;
      currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
       items += 32;
    }
    else if(mouseX < 450 && mouseX > 150 && mouseY < 1190 && mouseY > 1010 && scene  == 1 && time == 1566){
       scene = 6;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 0;
       change = 0;
    }
    else if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010 && scene == 1 && time == 1566){
      currentTime = millis();
       t = 2166;
       p = 2266;
       time = 2166;
       pop = 2266;
       angleChange = 1;
      legangleChange = 1;
    }
    else if(mouseX < 450 && mouseX > 150 && mouseY < 1190 && mouseY > 1010 && scene  == 6 && time == 0 && cash >= 20){
       line = 1;
       cash -= 20;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
       items += 64;
    }
    else if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010 && scene == 6 && time == 0 && cash >= 15){
      line = 2;
      cash -= 15;
      currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
       items += 128;
    }
    else if(mouseX < 450 && mouseX > 150 && mouseY < 1190 && mouseY > 1010 && scene  == 1 && time == 2166){
       scene = 7;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 0;
       change = 0;
    }
    else if(mouseX < 1050 && mouseX > 750 && mouseY < 1190 && mouseY > 1010 && scene == 1 && time == 2166){
      currentTime = millis();
      scene = 0;
       t = 2766;
       p = 2866;
       time = 2766;
       pop = 2866;
       angleChange = 1;
      legangleChange = 1;
    }
    else if(mouseX < 675 && mouseX > 525 && mouseY < 1150 && mouseY > 1050 && scene == 2){
       line = 3;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
    }
    else if(mouseX < 675 && mouseX > 525 && mouseY < 1150 && mouseY > 1050 && scene == 4){
       line = 3;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
    }
    else if(mouseX < 675 && mouseX > 525 && mouseY < 1150 && mouseY > 1050 && scene == 5){
       line = 3;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
    }
    else if(mouseX < 675 && mouseX > 525 && mouseY < 1150 && mouseY > 1050 && scene == 6){
       line = 3;
       currentTime = millis();
       t = 0;
       p = 0;
       time = 0;
       pop = 2;
    }
    
  
}

void choose(){
  fill(fill1);
  rect(300, 1100, 300, 180,50);
  fill(fill2);
  rect(900, 1100, 300, 180,50);
}
void drawRobot()
{
  noStroke();
  fill(#FFB62E);
  ellipse(0,-200,100,100); // head
  rect(0,-120, 20, 200); // body
  tint(0,250);
  image(mhair, -65, -265,130,100);
  stroke(#FFB62E);
  strokeWeight(20);
  drawLeftArm();
  drawLeftLeg();
  drawRightLeg();
  drawRightArm();
  stroke(0);
  strokeWeight(5);
}

void drawWRobot()
{
  noStroke();
  fill(#FFB62E);
  ellipse(0,-200,100,100); // head
  tint(0,250);
   image(whair, -85, -265,170,150);
  rect(0,-120, 20, 200); // body
 
  stroke(#FFB62E);
  strokeWeight(20);
  drawLeftArm();

  drawRightArm();

  drawLeftLeg();
  drawRightLeg();
  stroke(0);
  strokeWeight(5);
}

void drawLeftArm()
{
  pushMatrix();
  translate(0,-130);
  rotate(radians(armAngle));
  line(0, 0, -60, -50); // left arm
  popMatrix();
}

void drawRightArm()
{
  pushMatrix();
  translate(0,-130);
  rotate(radians(-armAngle));
  line(0, 0, 60, -50); // right arm
  strokeWeight(2);
  fill(#E054FC);
  stroke(#E054FC);
  line(60,-50, 70, -70);
  line(60,-50, 50, -70);
  rect(60, -90, 40, 40);
  stroke(#FFB62E);
  strokeWeight(20);
  popMatrix();
}

void drawLeftLeg()
{
  pushMatrix();
  translate(0,-20);
  rotate(radians(legAngle));
  line(0, 0, -50, 100); // left leg
  popMatrix();
}

void drawRightLeg()
{
  pushMatrix();
  translate(0,-20);
  rotate(radians(-legAngle));
  line(0,0,50, 100); // right leg
  popMatrix();
}