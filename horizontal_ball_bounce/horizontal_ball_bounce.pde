/*
The "Hello World" of sketches -- a bouncing ball

@author Justin Hadella (pitchnogle@gmail.com)
*/
float vx;
float x;
float y;
float r;

void setup() {
  // Setup screen dimensions
  size (800, 400);
  
  // Setup circle params
  r = 20.0;
  x = r;
  y = height / 2;

  // Initial x velocity
  vx = 4.0;
}

void draw() {
  // Draw a black background
  background(0);
  
  // Draw white line centered vertically
  stroke(255);
  line(0, height / 2, width, height / 2);
  
  // Draw circle (red)
  stroke(255, 0, 0);
  fill(255, 0, 0);
  ellipse(x, y, r, r);
  
  // Update ball position
  x = x + vx;
  
  // Flip horizontal speed at the ends
  if (x > width || x < 0) {
    vx *= -1.0;
  }
  
  // Ignoring r at ends looks something like ball deformation ;)
}
