class AntagonistCloud {
PImage cloud;
int loc_x;
int loc_y;
float resize;
int changedirection;

  AntagonistCloud(int x_axis, int y_axis, float scaleObject) {
    loc_x = x_axis;
    loc_y = y_axis;
    resize = scaleObject;
    cloud = loadImage("cloud.png");
  }
  
  void display() {
    pushMatrix();
    translate(loc_x, loc_y);
    scale(resize);
    image(cloud, 0, 0); 
    popMatrix();
   }
   
   void move() {
     
     if( loc_x >= width) {
       changedirection = 1;
       } if(loc_x == 0){
         changedirection = 0;
       } if (changedirection == 0){
         loc_x += 4;
       } else {
         loc_x -= 4;
       }
     
     }
     
   }

