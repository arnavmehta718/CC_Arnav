var img;
var Pslide, Bslide, BackSlide, Gslide, Blslide;

function setup(){
  createCanvas(700,500);
  img = loadImage("glass.png");
  Rslide = createSlider(0, 255, 249);
  Rslide.position(550, 20);
  Gslide = createSlider(0, 255, 188);
  Gslide.position(550, 60);
  Blslide = createSlider(0, 255, 57);
  Blslide.position(550, 100);
  Bslide = createSlider(0, 255, 193);
  Bslide.position(550, 140);
  BackSlide = createSlider(0,255,255);
  BackSlide.position(550, 180);
}

function draw(){
  var back = BackSlide.value(); 
  var RPotato = Rslide.value();
  var GPotato = Gslide.value();
  var BPotato = Blslide.value();
  var Blunt = Bslide.value();
  background(back);
  rectMode(CENTER);
  fill(0);
  stroke(0);
  rect(600, 250, 200, 500);
  fill(RPotato, GPotato, BPotato);
  stroke(RPotato, GPotato, BPotato);
  arc(300, 150, 100, 100, PI, TWO_PI);
  rect(300, 200, 100, 100);
  arc(300, 250, 100, 100, TWO_PI, PI);
  image(img, 200, 100, 200, 100);
  
  fill(Blunt);
  stroke(Blunt);
  triangle(325, 190, 410, 200, 410, 180);
  fill(255, 141, 48);
  stroke(255, 141, 48);
  arc(410,190,20,20,HALF_PI+ PI, HALF_PI);
  
  fill(255);
  stroke(255);
  text("Red value for Potato", 550, 55);
  text("Green value for Potato", 550, 95);
  text("Blue value for Potato", 550, 135);
  text("Blunt Color", 550, 175);
  text("Background Color", 550, 215);
}