import java.util.*;

ArrayList<Ball> balls;

void setup() {
  size(800, 400);
  
  balls = new ArrayList<Ball>();
}

void draw() {
  background(255);
  
  if (balls.size() < 50) {
    color c = color(random(255), random(255), random(255));
    balls.add(new Ball(c, random(-5,5), -random(5,16)));
  }
  
  for (Ball b : balls) {
    b.show();
    b.update();
  }
  
  removeBalls();
}

void removeBalls() {
  Iterator<Ball> i = balls.iterator();
  while (i.hasNext()) {
    Ball b = i.next();
    
    if (b.offscreen()) i.remove();
  }
}