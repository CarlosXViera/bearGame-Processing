class Star {

PImage star;
float growShrink = .08;
int starLoc_x;
int starLoc_y;
float s = 0.0;
float a = 0.0;


  Star(int x, int y) {
    starLoc_x = x;
    starLoc_y = y;
    star = loadImage("star.png");
  }
  
  void display(){ 
    pushMatrix();
    a = a + random(0.12);
    s = cos(a)*.6;
    translate(starLoc_x + 10, starLoc_y +10);
    scale(s);
    image(star, 0, 0);
    popMatrix();
  } 

 
}
