class Sketch{
  
  int var;
  
  Sketch(int tempv){
    var = tempv;
  }
  
  void drawer(){
  blendMode(BLEND);
  tint(255, 127);
  if(var == 0)
  {
    fill(random(255), random(255), random(255), 33);
    triangle(600, 600, mouseX, mouseY, random(1200), random(1200));
  }    
}
}