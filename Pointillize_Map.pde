PImage img;
int smallPoint, largePoint;

void setup() {
  size(640, 360);
  img = loadImage("atlBasemap.jpg");
  smallPoint = 80;
  largePoint = 100;
  imageMode(CENTER);
  noStroke();
  background(300);
}

void draw() {
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
}
