PImage img;

void setup() {
  size(800,600);
  img = loadImage("atlBasemap.jpg");
  // img.resize(width, 0); // uncomment this line of code to size the image properly
}

void draw() {
  image(img, 0, 0);
}
