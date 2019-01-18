class Ball {
  color c;
  
  float x;
  float y;
  
  float vx;
  float vy;
  
  float ax;
  float ay;
  
  final int max_bounces = 20;
  
  int bounces;
  
  Ball(color c, float vx, float vy) {
    x = width / 2;
    y = height - 10;
    
    this.c = c;
    this.vx = vx;
    this.vy = vy;
    
    ax = 0;
    ay = 0.3;
    
    bounces = 0;
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
    
    if (y > height - 6) {
      vy *= -0.8;
      
      y = height - 6;
      
      bounces++;
    }
  }
  
  boolean should_remove() {
    boolean out_of_bounds = x > width || x < 0 || y > height;
    boolean too_many_bounces = bounces > max_bounces;
    
    return out_of_bounds || too_many_bounces; 
  }
}
