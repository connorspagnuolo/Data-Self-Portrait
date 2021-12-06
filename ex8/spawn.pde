class Dot {

  PVector position;
  float size;
  int birthtime = 0;
  int lifetime = 3000;
  boolean alive = true;
  float delta;
  
  Dot(int _x, int _y, int _size) {
    position = new PVector(_x, _y);
    size = _size;
    delta = size / 150.0;    
    birthtime = millis();
  }
  
  void update() {
    
    if (alive) {
      position.y += delta;
      if (millis() > birthtime + lifetime) alive = false;
    }
  }
  
  void draw() {
    noStroke();
    fill(random(0, 255));
    ellipse(position.x, position.y, size, size);
  }
  
  void run() {
    update();
    draw();
  }
  
}
