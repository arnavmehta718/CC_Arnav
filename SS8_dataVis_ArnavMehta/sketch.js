var weight;
var rows;
var columns; //added column variable
var count = 0;
var button, button1, button2
var scene = 0;

function preload() {
  weight = loadTable("animals.csv", "csv", "header");
}

function setup() {
  createCanvas(1000, 1000);
  rows = weight.getRowCount(); // moved from preload() to setup()
  columns = weight.getColumnCount(); // added these three lines
  console.log("rows: " + rows);
  console.log("columns: " + columns)
  button = createButton('size by body/brain weight');
  button.position(150,950);
  button.mousePressed(scene1);
  
  button1 = createButton('size by brain/body weight');
  button1.position(650,950);
  button1.mousePressed(scene2);
  
  button1 = createButton(' Brain or Body');
  button1.position(425,950);
  button1.mousePressed(scene0);
}

function draw() {
  if(scene === 0){
    if(count === 0){
    background(255);
    textAlign(CENTER);
    fill(0);
    textSize(50);
    text("Which weights more", 500, 50)
    
    for (var x = 0; x < rows; x += 1) {
      if(weight.get(x,"brain") > weight.get(x,"body")){
        fill(255,0,0);
        textSize(50);
        text("Brain",250, 90)
        textSize(20);
        text(weight.get(x,0),random(0,500),random(120,900));
      }
      else{
        fill(0,255,0);
        textSize(50);
        text("Body",750, 90)
        textSize(20);
        text(weight.get(x,0),random(500,1000),random(120,900));
      }
      
    }
  }
  count+=1;
  }
  else if(scene == 1){
    if(count === 0){
      background(255);
      fill(0);
      textAlign(CENTER);
      textSize(50);
      text("body/brain", 500, 50)
      for (var x = 0; x < rows; x+= 1) {
        for(var y = 0; y < weight.get(x,1)/10;y+=1){
          textSize(weight.get(x,1)/weight.get(x,2));
          text(weight.get(x,0),random(0,1000),random(120,900));
        }
      }
    }
    count+=1;
  }
  else if(scene == 2){
    if(count === 0){
      background(255);
      fill(0);
      textSize(50);
      textAlign(CENTER);
      text("Brain/Body", 500, 50)
      for (var x = 0; x < rows; x+= 1) {
        for(var y = 0; y < weight.get(x,2)/10;y+=1){
          textSize(weight.get(x,2)/weight.get(x,1));
          text(weight.get(x,0),random(0,1000),random(120,900));
        }
      }
    }
    count+=1;
  }
}

function scene1(){
  scene = 1;
  count = 0;
}
function scene2(){
  scene = 2;
  count = 0;
}
function scene0(){
  scene = 0;
  count = 0;
}

