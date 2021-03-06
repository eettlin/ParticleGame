

class Game {
  Blue hero;
  ArrayList<Particle> particles = new ArrayList<Particle>();
  ArrayList <Yellow> coins = new ArrayList<Yellow>();
  ArrayList<Green> greenFlock = new ArrayList<Green>();
  ArrayList<Red> red = new ArrayList<Red>();
  boolean showBlue;
  InfoArea infoArea;

  Game() {
    hero = new Blue(new PVector(200, 200));
     infoArea = new InfoArea(new PVector(playAreaWidth, 0), infoPanelWidth, playAreaHeight);
    loadArray();
    Yellow uh = new Yellow(new PVector(100, 100), new PVector(10, 10));
    coins.add(uh);
    showBlue = true;
   
  }

  void run() {

    runParticles();
    display();
    infoArea.run();
    hero.run();
    
  }


  void display() {
    for (int i = 0; i < coins.size(); i++)
    {
      coins.get(i).run();
    }
  

 // remove g if b comes within 30
  for (int i = greenFlock.size() - 1; i >= 0; i--)
  {
    if (hero.loc.dist(greenFlock.get(i).loc) < 30 )
    {
      greenFlock.remove(i);
    }
  }

  for (int i = greenFlock.size() - 1; i >= 0; i--)
  {
    greenFlock.get(i).run();
  }
  for (int i = 0; i < coins.size(); i++)
  {
    if (hero.loc.dist(coins.get(i).loc) < 10 )
    {
      hero.vel.mult(2);
    }
    coins.get(i).run();
  }
    for (int i = 0; i < red.size(); i++)
  {
    if (hero.loc.dist(red.get(i).loc)< 50)
    {
      showBlue = false;
    }
    red.get(i).run();
}

  }
  void runParticles() {
    hero.run();
    for (int i = 0; i < particles.size(); i++) {
      particles.get(i).run();
    }
  }

  void loadArray() {
    
      for (int i = 0; i < 30; i++)
  {
          int x = (int)random(1100);
           int y = (int)random(800);
    greenFlock.add(new Green(new PVector(x, y), new PVector(-5, 5)));
  }
    for (int i = 0; i < red.size(); i++)
  {
    
  

    //  for(int i = 0; i < 2; i++)
    // {
    //   coins.add(new Yellow(new PVector(100,100), new PVector(10,10)));
    //   
    // }

//    for (int i = 0; i < MAX_GREEN; i++) {
//      int x = (int)random(1100);
//      int y = (int)random(800);
//      particles.add(new Green(new PVector(x, y), new PVector(-5, 5)));
//    }
    particles.add(new Red(new PVector(100, 100), new PVector((int)random(-5, 5), (int)random(-5, 5))));
    for (int i = 0; i < MAX_YELLOW; i++) {
      int x = (int)random(1100);
      int y = (int)random(800);
      particles.add(new Yellow(new PVector(x, y), new PVector(-5, 5)));
    }
    
  }
  
}

