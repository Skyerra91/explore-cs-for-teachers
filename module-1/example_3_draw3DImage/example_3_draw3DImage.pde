PImage img;

void setup() {
  size(800, 600, P3D); // add 3D renderer
  img = loadImage("atlBasemap.jpg");
  img.resize(width, 0);
}

void draw() {
  background(50);
  push(); // translate and rotate the coordinate system. Must call push first, then pop when finished
  translate(0, 300, -300);
  rotateX(PI/2.75);
  image(img, 0, 0); // draw image
  pop();
}
