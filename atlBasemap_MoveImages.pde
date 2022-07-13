PImage atlBasemap; // global variable kroger

// Setup is a function that runs once "sets" things up for the sketch
void setup() {
  atlBasemap = loadImage("atlBasemap.jpeg");
  size(360, 500);
}

// Draw is a function that runs over and over again
void draw() {
  background(50);
  image(atlBasemap, 0, 0);
  image(atlBasemap, mouseX, mouseY, 250, 250);
}
