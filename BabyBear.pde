class Antagonist {
PImage babyBear;
int loc_x;
int loc_y;
float resize;

  Antagonist(int x_axis, int y_axis, float scaleObject) {
    loc_x = x_axis;
    loc_y = y_axis;
    resize = scaleObject;
    babyBear = loadImage("babyBear.png");
  }

void display() {
    pushMatrix();
    translate(loc_x, loc_y);
    scale(resize);
    image(babyBear, 0, 0); 
    popMatrix();
   }
}

