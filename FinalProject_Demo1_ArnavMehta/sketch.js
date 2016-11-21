var s1,s2,s3,s4;
var nextbutton, lastbutton;

function preload(){
  s1 = loadSound("The Chainsmokers - All We Know ft. Phoebe Ryan(CUT).mp3");
  s2 = loadSound("Gente de Zona - Mas Macarena(CUT).mp3");
  s3 = loadSound("iLoveMemphis - Lean And Dabb(CUT).mp3");
  s4 = loadSound("Era Istrefi - Bonbon(CUT).mp3");
}

function setup() {
  createCanvas(1200,800)
  background(255);
  
  s1.loop();
  s2.loop();
  s3.loop();
  s4.loop();
  
  s1.stop();
  s2.stop();
  s3.stop();
  s4.stop();
  
  nextbutton = createButton('Next');
  nextbutton.position((width/2 + 325), (height/2-15));
  nextbutton.mousePressed(playforward);
  
  nextbutton = createButton('Previous');
  nextbutton.position((width/2 - 375), (height/2-15));
  nextbutton.mousePressed(playbackward);
  
}

function draw() {
  rectMode(CENTER);
  fill(0);
  stroke(0);
  strokeWeight(1);
  rect(width/2, height/2, 600,250);
  ellipse(width/2 - 300, height/2, 250,250);
  ellipse(width/2 + 300, height/2, 250,250);
  fill(50);
  stroke(50);
  strokeWeight(1);
  rect(width/2, height/2, 150,250);
  for(var x = height/2 - 115; x < height/2 + 125; x += 10){
    for(var y = width/2 - 290; y < width/2 + 300; y+= 10){
    ellipse(y, x, 5, 5);
    }
  }
  noFill;
  stroke(255,0,0);
  strokeWeight(10);
  ellipse(width/2, height/2+20, 80,80);
  line(width/2-40, height/2 + 20, width/2-40, height/2 - 60);

}

function playforward(){
    if(s1.isPlaying() == false && s2.isPlaying() == false && s3.isPlaying() == false){
      s4.stop()
      s1.play();
    }
    else if(s1.isPlaying() == true && s2.isPlaying() == false && s3.isPlaying() == false && s4.isPlaying() == false){
      s1.stop();
      s2.play();
    }
    else if(s2.isPlaying() == true && s3.isPlaying() == false && s1.isPlaying() == false && s4.isPlaying() == false){
      s2.stop();
      s3.play();
    }
    else if(s3.isPlaying() == true && s4.isPlaying() == false && s2.isPlaying() == false && s1.isPlaying() == false){
      s3.stop();
      s4.play();
    }
}

function playbackward(){
    if(s4.isPlaying() == false && s2.isPlaying() == false && s3.isPlaying() == false){
      s1.stop()
      s4.play();
    }
    else if(s2.isPlaying() == true && s3.isPlaying() == false && s1.isPlaying() == false && s4.isPlaying() == false){
      s2.stop();
      s1.play();
    }
    else if(s3.isPlaying() == true && s2.isPlaying() == false && s1.isPlaying() == false && s4.isPlaying() == false){
      s3.stop();
      s2.play();
    }
    else if(s4.isPlaying() == true && s2.isPlaying() == false && s2.isPlaying() == false && s1.isPlaying() == false){
      s4.stop();
      s3.play();
    }
}
