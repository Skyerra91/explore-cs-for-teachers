// global variables
PImage [] imageArray = new PImage[5]; // an array of 5 images
int imageCounter = 0; // integer to select which image to draw

void setup() {
  size(500, 500);
  // Add your images to the sketch and rename the filenames!
  imageArray[0] = loadImage("kroger.jpeg");
  imageArray[1] = loadImage("kroger.jpeg");
  imageArray[2] = loadImage("kroger.jpeg");
  imageArray[3] = loadImage("kroger.jpeg");
  imageArray[4] = loadImage("kroger.jpeg");
  // imageArray[5] = loadImage("kroger.jpeg"); // does this work?
}

void draw() {
  background(0);
  image(imageArray[imageCounter], mouseX, mouseY, 250, 250);
}

// Update image counter
//void keyPressed() {
//  if (imageCounter > imageArray.length - 1) imageCounter = 0; // why -1?
//  else imageCounter +=1;
//}
