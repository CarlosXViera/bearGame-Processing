//point of the game is to have the bears touch. 


import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer backgroundmusic;
AudioInput input;
AudioPlayer cry;
PImage bg;
PImage tree;
PImage floor;
PImage hand;
PImage grab;
int x1 = 0;
int y1 = 0;
Protagonist mommybear;
Antagonist babybear;
AntagonistCloud cloud1;
AntagonistCloud cloud2;
AntagonistCloud cloud3;
AntagonistCloud cloud4;
DialogBox dialog1;
DialogBox dialog2;
Star[] stars = new Star[500];


  
  void setup() {
  size(720, 480);
  minim = new Minim(this);
  backgroundmusic = minim.loadFile("bgsong.mp3");
  cry = minim.loadFile("whohoo.mp3");
  input = minim.getLineIn();
  smooth();
  noStroke();
  bg = loadImage("bg.png");
  mommybear = new Protagonist(115, 340, .9);
  babybear = new Antagonist(565, 125, .5);
  cloud1 = new AntagonistCloud(-40, 65, .55);
  cloud2 = new AntagonistCloud(500, 300, .35);
  cloud3 = new AntagonistCloud(100, 250, .2);
  cloud4 = new AntagonistCloud(240, 100, .5);
  dialog1 = new DialogBox();
  dialog2 = new DialogBox();
  frameRate(30);
  tree = loadImage("Tree.png");
  hand = loadImage("hand.png");
  grab = loadImage("grab.png");
  floor = loadImage("floor.png");
  noCursor();
  
  for (int i = 0; i < stars.length; i++) {
    x1 = x1 + 12 - (int)random(5);
    y1 = y1 + 12 - (int)random(5);
    stars[i] = new Star((int)random(x1) , (int)random(y1));
   }
   
   
}
 void restart(){
 
     
   }
void draw() {
   backgroundmusic.setGain(-20);
   backgroundmusic.play();
   background(25, 25, 50);
   image(bg, width/2, height/2);
   fill(130, 161, 87);
   x1 = x1 + 20;
   y1 = y1 + 20;
for (int i = 0; i < stars.length; i++) {
       stars[i].display();     
  } 
cloud1.display();
image(tree, 600,240);
image(floor,width/2,435);
babybear.display();  
mommybear.display();
cloud2.display();
mommybear.move();
cloud3.display();
cloud4.display();
cloud1.move();
cloud2.move();
cloud3.move();
cloud4.move();
detectSquareCollisions();
}

void detectSquareCollisions() {
  if ((mommybear.loc_x > babybear.loc_x - 60) && (mommybear.loc_x < babybear.loc_x + 60) && (mommybear.loc_y > babybear.loc_y - 100) && (mommybear.loc_y < babybear.loc_y + 100))  {
    background(96, 169, 23);
    restart();
  }
  if ((mommybear.loc_x > cloud1.loc_x - 130) && (mommybear.loc_x < cloud1.loc_x + 130) && (mommybear.loc_y > cloud1.loc_y - 100) && (mommybear.loc_y < cloud1.loc_y + 100))  {
    background(255, 0, 0);
    mommybear.loc_x = 115;
   
  }
  if ((mommybear.loc_x > cloud2.loc_x - 100) && (mommybear.loc_x < cloud2.loc_x + 100) && (mommybear.loc_y > cloud2.loc_y - 60) && (mommybear.loc_y < cloud2.loc_y + 60))  {
    background(255, 0, 0);
    mommybear.loc_x = 115; 
  }
  if ((mommybear.loc_x > cloud3.loc_x - 40) && (mommybear.loc_x < cloud3.loc_x + 40) && (mommybear.loc_y > cloud3.loc_y - 20) && (mommybear.loc_y < cloud3.loc_y + 20))  {
    background(255, 0, 0);
    mommybear.loc_x = 115;
  }
  if(mousePressed){
    image(grab, mouseX, mouseY, 40, 40);
    
  } else {
    image(hand, mouseX, mouseY, 40, 40);
  }
  dialog1.dialogbox1();
  
  }
 
  


