/* Attribution: The Original Sketch was by Christy and Laurnen. 
To that we added a new count method that counts the # of cookies
eaten. we also modified the fall method to reset the cookie to a 
new position everytime a cookies is to be resetted. we made the 
pizzas into cookies. THe new Title is Cookie Monster: by Arnav &
Mahotsaha Das.
*/

//names image
PImage pizzaman;

//set up pizza array with global variable
Pizza [] pizza = new Pizza[7];
int [] X = new int[7];


int [] Y = new int[7];


int counter = 0;

void setup(){
  //load pizzaman image
  pizzaman = loadImage("pizzaman.png");
  size(500, 500);
  
  //initialize pizza by calling the constructor with a for loop
  for (int i = 0; i<pizza.length; i++){
    X[i] = int(random(180, 450));
    Y[i] = int(random(-400, 200));
    pizza[i]= new Pizza(X[i], Y[i], 80, 80, i);
  }
}

void draw(){
  background(#B2F4FF);
  //call methods on the pizza
  for(int i=0; i<pizza.length; i++){
    pizza[i].display();
    pizza[i].fall();
    pizza[i].count();
  }
  //display pizzaman image
  image(pizzaman, mouseX-310, 400, 700, 200);
  textSize(32);
  text("Cookies Eaten: " + counter, 20, 50, 145, 400);
}