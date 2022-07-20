class Word {

  String word; // What is the String
  PVector position;   // Where is it on the screen

  Word(String s) {
    position = new PVector(random(width), random(-height, height));
    word = s;
  }

  void move() {
    float speed = 1;
    position.y += speed;
    if (position.y > height) {
      position.y = -height;
    }
  }

  void display() {
    text(word, position.x, position.y);
  }
}  
