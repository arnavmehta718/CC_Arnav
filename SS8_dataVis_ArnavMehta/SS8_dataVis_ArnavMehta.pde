Table colors;
int[] r;
int[] g;
int[] b;
int rows;
float len = 0;
float len2 = 0;
int x = 0;
int w = 0;

void setup(){
  size(1000,1000);
  colors = loadTable("data.csv");
  rows = colors.getRowCount();
  r = new int[rows];
  g = new int[rows];
  b = new int[rows];
  
  for(int i = 0; i < rows; i++){
    r[i] = colors.getInt(i, 0);
    g[i] = colors.getInt(i, 1);
    b[i] = colors.getInt(i, 2);
  }
  print(r.length);
}

void draw(){
  for(int y = 0; y < 100; y++){
    fill(r[x],g[x],b[x]);
    stroke(r[x],g[x],b[x]);
    line(width/2, height/2, len, len2);
    
    if( w == 0){
      len+=1;
    }
    else if( w == 1){
      len2+=1;
    }
    else if( w == 2){
      len-=1;
    }
    else if( w == 3){
      len2-=1;
    }
    
    if(len == 0 && len2 == 0){
      w = 0;
    }
    else if(len == width && len2 == 0){
      w = 1;
    }
    else if(len == width && len2 == height){
      w = 2;
    }
    else if(len == 0 && len2 == height){
      w = 3;
    }
    
    x+=1;
    if(x == rows){
      x = 0;
    }
  }
  
  ellipse(mouseX,mouseY, 50,50);
  
}