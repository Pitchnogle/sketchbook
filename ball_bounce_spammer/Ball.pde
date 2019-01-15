class Ball {
  float x;
  float y;
  float r;
  
  float vx;
  float vy;
  
  int R;
  int G;
  int B;
  
  Ball(int R, int G, int B) {
    x = 0;
    y = height / 2;
    r = 20.0;
    
    vx = random(2.0,5.0);
    vy = random(-5.0,5.0);
    
    this.R = R;
    this.G = G;
    this.B = B;
  }
  
  void update() {
    x += vx;
    y += vy;
  }
  
  void check_bounds() {
    if (x > width  || x < 0) vx *= -1;
    if (y > height || y < 0) vy *= -1;
  }
  
  boolean collision() {
    return (x < 0 || x > width || y < 0 || y > height);
  }
  
  void show() {
    stroke(R, G, B);
    fill(R, G, B);
    ellipse(x, y, r, r);
  }
}