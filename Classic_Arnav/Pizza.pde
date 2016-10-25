class Pizza{
  //instance variables
  int x;
  int y;
  int diameter;
  int diameter1;
  int count;
  int speed;

  //constructor
  //constructor arguments are temp- used to initialize variables in object
  Pizza(int tempX, int tempY, int tempDiameter, int tempDiameter1, int tempC, int tempS){
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
    diameter1 = tempDiameter1;
    count = tempC;
    speed = tempS;
  }
//method: display pizza  
  void display(){
    //pizza base
    fill(240, 214, 111);
    strokeWeight(10);
    stroke(137, 89, 11);
    ellipse(x, y, diameter, diameter1);
    //choco
    noStroke();
    fill(#715008);
    ellipse(x+10, y+10, 10, 10); 
    ellipse(x-10, y-10, 10, 10);
    ellipse(x, y-20, 10, 10);
    ellipse(x, y+25, 10, 10);
    ellipse (x+1, y, 10, 10);
    ellipse (x+10, y-10, 10, 10);
    ellipse(x-25, y, 10, 10);
    ellipse(x+30, y, 10, 10);
  }
  
//method: pizza falling  
  void fall(){
    if (y>height+100){
      y =-100;
      pizza[count] = new Pizza(int(random(200, 400)), int(random(-400,-100)), 80, 80, count, int(random(1,11)));
    } else{
      y ++;
    }
  }

  void count(){
    if( y == height && x > mouseX && x < (mouseX+150)){
      counter += 1;
    }
    else{
    }
  }
}