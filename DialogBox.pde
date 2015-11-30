class DialogBox {
  String introduction = "Press left mouse button to drag Mrs. Bear to her baby.";
  int loc_x;
   DialogBox(){
    
     
   }
   
  void dialogbox1(){
     loc_x = 210;
     stroke(0);
     fill(#8E388E);
     rect(210, height - 40, 300, 25);
     fill(0);
     text(introduction,  215 , height - 25);
   }
   
   void dialogbox2(){
     
   }
  
}
