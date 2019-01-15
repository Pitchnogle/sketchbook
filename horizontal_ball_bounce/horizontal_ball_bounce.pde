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
  y = (height - r) / 2;

  // Initial x velocity
  vx = 4.0;
}

void draw() {
  // Draw a black background
  background(0);
  
  // Draw circle (red)
  fill(255, 0, 0);
  ellipse(x, y, r, r);
  
  // Update position
  x = x + vx;
  
  // Flip horizontal speed at the ends
  if (x > width || x < 0) {
    vx *= -1.0;
  }
  
  // Ignoring r at ends looks something like ball deformation ;)
}