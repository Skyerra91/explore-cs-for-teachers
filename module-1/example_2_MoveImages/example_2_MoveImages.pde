PImage img;

void setup() {
  size(800,600);
  img = loadImage("atlBasemap.jpg");
  img.resize(width, 0);
}

void draw() {
  //background(50); // unncomment to draw a background
  image(img, mouseX, mouseY);
}
