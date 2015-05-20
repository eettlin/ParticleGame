
int MAX_GREEN = 30;
int MAX_YELLOW = 2;
Boolean started = false;
Game game  = new Game();
Button button = new Button(new PVector(100, 100));
int playAreaHeight = 900;
int playAreaWidth = 1100;
int infoPanelWidth = 100;
int scrnWidth = playAreaWidth + infoPanelWidth;

void setup()
{
 size(scrnWidth, playAreaHeight);
  background(255, 20, 20);
}

void draw()
{
  if (started == true) {
    background(22, 20, 60); 
    game.run();
  }
  else {
    button.display();
  }
}



void mousePressed() {
  if (button.hit_test()) {
    started = true;
  }
}

