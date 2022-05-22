MovingCircle mc;
void setup() {
  size(400, 400);
  mc = new MovingCircle(1, 100);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  mc.move();
  mc.draw();
}
