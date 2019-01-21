/*
Sketch uses parametric equations to resemble a screensaver

@author Justin Hadella (pitchnogle@gmail.com)
*/

// Arrays of R,G,B colors looks like a spectrum
int r[] = {250, 250, 250, 125,   0,   0,   0,   0,   0,   0, 125};
int g[] = {  0, 125, 250, 250, 250, 250, 250, 125,   0,   0,   0};
int b[] = {  0,   0,   0,   0,   0, 125, 250, 250, 250, 125, 125};

float t;

void setup() {
  fullScreen();
}

void draw() {
  // Clear the screen
  background(0);
  
  // Sets the line thickness
  strokeWeight(2);
  
  // Set origin to center of window
  translate(width / 2, height / 2);
  
  for (int i = 0; i < r.length; i++) {
    // Set the color
    stroke(r[i], g[i], b[i]);
    
    // Draw the line using the parametric equations
    line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
  }

  // Time update controls speed
  t += 0.25;
  
  // As t is incremented to larger values, the line zips around
  // faster and faster. Initial value of 1 looks too fast. The
  // smaller numbers seem to look better.
}

// The parametric equations are completely arbitrary

float x1(float t) {
  return 100 * sin(t / 11) + 100 * cos(t / 7);
}

float y1(float t) {
  return 100 * cos(t / 13) + 200 * sin(t / 7);
}

float x2(float t) {
  return 200 * cos(t / 11) + 300 * cos(t / 5);
}

float y2(float t) {
  return 200 * sin(t / 5) + 300 * sin(t / 11);
}
