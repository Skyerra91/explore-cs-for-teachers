PImage kroger; // global variable kroger

// Setup is a function that runs once "sets" things up for the sketch
void setup() {
  kroger = loadImage("kroger.jpeg");
  size(500, 500);
}

// Draw is a function that runs over and over again
void draw() {
  background(0);
  //image(kroger, 0, 0);
  //image(kroger, mouseX, mouseY, 250, 250);
}
