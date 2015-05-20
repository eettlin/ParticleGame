
class Red extends Particle {

  
  Red(PVector l, PVector v)
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
   fill(222, 22, 22);
   ellipse(loc.x, loc.y, 100, 100); 
    
    
    
  }
  
   void update()
  {
    acc = new PVector(random(-.21, .21), random(-.21, .21));
    
    PVector dir = PVector.sub(game.hero.loc, loc);
    
    dir.normalize();
    dir.mult(.06);
    acc.add(dir);
    vel.add(acc);
    loc.add(vel);
    vel.limit(3);
    
  }
  
}
