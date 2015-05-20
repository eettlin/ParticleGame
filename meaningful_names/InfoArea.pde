class InfoArea{
 PVector loc;
 int myWidth, myHeight;

InfoArea(PVector location, int w, int h){ 
  loc = location;
  myWidth = w;
  myHeight = h;
}
  void run(){
   menu();
  }

  }
  void menu(){
     //start of base of menu
  fill(0,70,150);
  stroke(30);

 rect(playAreaWidth-200, playAreaHeight-900,playAreaWidth, playAreaHeight);
  smooth();

  
}
