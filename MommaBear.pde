class Protagonist {
int loc_x;
int loc_y;
float resize;
int xupperdimension;
int xlowerdimension;
int yupperdimension;
int ylowerdimension;
int total = 20;
int frame = 0;
PImage[] mommybearpng = new PImage[total];

    

  Protagonist(int x_axis, int y_axis, float scaleObject) {
    
    
    loc_x = x_axis;
    loc_y = y_axis;
    resize = scaleObject;
  for (int i = 0; i < total; i++){
      String title = "mommyBear" + nf(i, 4) + ".png";
      mommybearpng[i] = loadImage(title);
    }  
  }
  
  void display() {
    
    
    pushMatrix();
    translate(loc_x, loc_y);
    scale(resize);
    frame = (frame+1) % total;
    imageMode(CENTER);
    image(mommybearpng[(frame)],0,0);
    popMatrix();
  }
  
  
  
  
  //INTERACTION USER WILL USE KEYS TO MOVE PROTAGONIST AROUND. THIS BEAR WILL EVENTUALLY HUG A CUTE INNOCENT BABY =)
  void move() {
    int xupperdimension = loc_x - 20;
    int xlowerdimension = loc_x + 58;
    int yupperdimension = loc_y - 78;
    int ylowerdimension = loc_y + 98;

    if ((mousePressed) && (mouseX > xupperdimension ) && (mouseX < xlowerdimension) && (mouseY > yupperdimension) && (mouseY < ylowerdimension) ) {
      loc_x = mouseX;
      loc_y = mouseY;
      cry.setGain(-30);
      cry.play();
     
      
     
    } else {
       cry.rewind();
       cry.setGain(-100);
       loc_y += 10;
       
      }
      if (loc_y >= 385){
        loc_y = 385;
        
      }
    }
    
    
}
