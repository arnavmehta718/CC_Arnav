class Rectang{
  int x;
  int y;
  int wide;
  //creates the rectangle for every input;
  Rectang(int tx, int ty, int tw){
    x = tx;
    y =ty;
    wide = tw;
  }
  
  void display(){
    fill(255);
    rect(x,y,wide,wide);
  }
}