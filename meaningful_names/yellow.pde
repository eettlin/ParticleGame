
class Yellow extends Particle {

  
  Yellow(PVector l, PVector v)
  {
     super(l,v);
  }
  
  void run(){
    display();
    update();
    checkedges();
    mouse.x = mouseX;
    mouse.y = mouseY;
    
  }

  void display(){
   noStroke();
   fill(255, 255, 0);
   ellipse(loc.x, loc.y, 20, 20); 
  }
  
    void update() {
  
    acc = new PVector(random(-.21, .21), random(-.21, .21));
    vel.add(acc);
    loc.add(vel);
    vel.limit(3);
//      if (loc.x > game.hero.loc.x && loc.x <= game.hero.loc.x + 20) {
//           game.hero.vel.div(3);
//      
     
 if( game.hero.loc.x > loc.x - 40)
    {
      if( game.hero.loc.x < loc.x + 40)
       {
         if( game.hero.loc.y > loc.y -40)
         {
           if( game.hero.loc.y < loc.y +40)
           {
              game.hero.vel.div(3);
           
         }
         }
       }
    }
 
    }
    }
}
  
      //print("YELLOW: " + loc.x + ", " + loc.y + "\n");
      //print("BLUE:" + game.b.loc.x + ", " + game.b.loc.y + "\n");  


