boolean rand1;

void setup() {
  size(500, 500);  //feel free to change the size
  //noLoop(); //stops the draw() function from repeating
  //frameRate(30);
  for(int y =600; y>= -50;y-=30){
    for(int x = 600;x >= -50;x-=33){
     
      scale(x,y);
    }
  }
}
void draw() {

}


void scale(int x, int y) {

  int r = (int)(Math.random()*256);
  int g = (int)(Math.random()*256);
  int b = (int)(Math.random()*256);

  fill(r,g,b);
  ellipse(x+20,y+20,40,40);
  noStroke();
  rect(x,y,40,20);

  for(int j = 1;j<=3;j++){
    //noStroke();
    int r1 = (int)(Math.random()*256);
    int g1 = (int)(Math.random()*256);
    int b1 = (int)(Math.random()*256);
    fill(r1,g1,b1);
    ellipse(x+20,y+20,40-(j*10),40-(j*10));

  }
  
}

void mouseClicked() {
    boolean shift = true;
  double random = Math.random();


  if (random > 0.5){
    rand1 = true; 
  }
  if (random < 0.5) {
    rand1 = false;
  }

if (rand1==true){
  for(int y =600; y>= -50;y-=30){
    for(int x = 600;x >= -50;x-=33){
      if (shift==true){
        scale(x+5,y);
      } else {
        scale(x,y);
      }
      if (shift == true){
        shift = false;
      } else {
        shift = true;
      }
      //scale(x,y);
    }
  }
}

if (rand1==false){
  for(int y =600; y>= -50;y-=30){
    for(int x = -50;x <= 600;x+=33){
      if (shift==true){
        scale(x+5,y);
      } else {
        scale(x,y);
      }
      if (shift == true){
        shift = false;
      } else {
        shift = true;
      }
      //scale(x,y);
    }
  }
}
  
}
