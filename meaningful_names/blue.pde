
class Blue extends Particle {

  Blue(PVector l)
  {
     super(l);
  }
  
  void run(){
    display();
    update();
    checkedges();
    mouse.x = mouseX;
    mouse.y = mouseY;
  }

  void update()
  {
    acc = new PVector(random(.21, .21), random(.21, .21));
    PVector dir = PVector.sub(mouse, loc);
    if(mousePressed)
    {
     dir = PVector.sub(loc, mouse);
    }
    
    dir.normalize();
    dir.mult(.6);
    acc.add(dir);
    vel.add(acc);
    loc.add(vel);
    vel.limit(5);
    
  }
  




}
