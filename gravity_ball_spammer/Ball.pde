class Ball {
  color c;
  
  float x;
  float y;
  
  float vx;
  float vy;
  
  float ax;
  float ay;
  
  Ball(color c, float vx, float vy) {
    x = width / 2;
    y = height - 10;
    
    this.c = c;
    this.vx = vx;
    this.vy = vy;
    
    ax = 0;
    ay = 0.3;
  }
  
  void show() {
    noStroke();
    fill(c);
    ellipse(x, y, 20, 20);
  }
  
  void update() {
    x += vx;
    y += vy;
    
    vx += 0;
    vy += ay;
    
    if (y > height - 10) {
      vy *= -0.8;
      
      y = height - 10;
    }
  }
  
  boolean offscreen() {
    return (x > width || x < 0 || y > height); 
  }
}
