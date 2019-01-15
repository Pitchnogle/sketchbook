/*
A fancier second sketch which spams balls each time a wall is hit

@author Justin Hadella (pitchnogle@gmail.com)
*/
ArrayList<Ball> balls;

// Stop spamming new balls at some point
int max_balls = 200;

void setup() {
  size(800, 400);
  
  balls = new ArrayList<Ball>();
  create_ball();
}

void draw() {
  background(0);
  
  boolean spawn = false;
  
  for (Ball b : balls) {
    b.show();
    b.update();
    b.check_bounds();
    
    if (b.collision()) {
      spawn = true;
    }
  }
  
  // Need to spawn outside of loop!
  if (spawn) {
    create_ball(); 
  }
}

void create_ball() {
  if (balls.size() < max_balls) {
    int R = (int)random(0, 255);
    int G = (int)random(0, 255);
    int B = (int)random(0, 255);
    
    balls.add(new Ball(R, G, B));
  }
}
