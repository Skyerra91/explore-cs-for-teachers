class Word {

  PImage word; // What is the String
  PVector position;   // Where is it on the screen

  Word(PImage s) {
    position = new PVector(random(width), random(0, height));
    word = s;
  }

  void move() {
    float speed = 1;
    position.y += speed;
    if (position.y > height) {
      position.y = 0;
    }
  }

  void display() {
    image(word, position.x, position.y, 100, 100);
  }
}  
