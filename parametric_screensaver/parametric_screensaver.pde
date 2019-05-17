/*
Sketch uses parametric equations to resemble a screensaver

@author Justin Hadella (pitchnogle@gmail.com)
*/

// Number of steps when cycling through colors
final int color_steps = 12;

// Stop at ~ violet
final int color_stop = 220;

// Hue adjustment in drawing inner loop
final int color_step = color_stop / color_steps;

// Start at red
int hue = 0;

// Time step
float t;

void setup() {
  fullScreen();
  colorMode(HSB);
}

void draw() {
  // Clear the screen
  background(0);
  
  // Sets the line thickness
  strokeWeight(2);
  
  // Set origin to center of window
  translate(width / 2, height / 2);

  for (int i = 0, hue = 0; i < color_steps; i++) {
    // Set the color
    stroke((int)hue, 255, 255);
    
    // Draw the line using the parametric equations
    line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
    
    // Update color
    hue += color_step;
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
