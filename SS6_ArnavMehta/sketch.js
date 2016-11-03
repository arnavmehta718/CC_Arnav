
/*  Artistic values, By Arnav Mehta
    The sketch reflects my SS3 sketch, but takes the input from the audience whether to stop, start, or clear. 
    It draws the shapes on top of a image, and continuous drawing non=stop unless told to stop. 
    instructions included: commands, type start to start, stop to stop, and clear to clear.
*/

var var1 = 0;
var input, button, greeting;
var imag;

function preload(){
  imag = loadImage("star.jpg")
  
}

function setup(){
  createCanvas(500,500);
  background(0);
  image(imag, 0 ,0,imag.width/2,imag.height/2);
  
  input = createInput();
  input.position(20, 65);

  button = createButton('submit');
  button.position(150, 65);
  button.mousePressed(greet);

  greeting = createElement('h2', 'Tell me when to start:');
  greeting.position(20, 5);
  fill(255)
  stroke(255);
  textAlign(CENTER)
  textSize(50);
}

function greet() {
  var start = input.value();
  greeting.html('Thank you!');
  if(start == 'start'){
    var1 = 1;
  }
  else if(start == 'stop'){
    var1 = 0;
  }
  else{
    background(0);
    image(imag, 0 ,0,imag.width/2,imag.height/2);
  }
}


function draw(){
  blendMode(BLEND);
  tint(255, 20);
  if(var1 === 1)
  {
    fill(random(255), random(255), random(255), 33);
    quad(250, 250,random(500), random(500), random(500), random(500), random(500), random(500));
    filter(ERODE);
  } 
}


