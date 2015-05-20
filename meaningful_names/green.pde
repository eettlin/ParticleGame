

class Green extends Particle{
  
  Green(PVector l, PVector v)
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
   fill(22, 222, 20);
   ellipse(loc.x, loc.y, 30, 30); 
    
    
  }
void update()
  {
    acc = new PVector(random(-.21, .21), random(-.21, .21));
    vel.add(acc);
    loc.add(vel);
    vel.limit(3);
    
  }

}
