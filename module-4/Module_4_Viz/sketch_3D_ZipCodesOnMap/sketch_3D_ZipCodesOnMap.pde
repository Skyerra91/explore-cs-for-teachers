ArrayList<Word> data = new ArrayList<Word>();
PImage img;

void setup() {
  size(1500, 750, P3D);
  loadFile("zip-codes.txt");
  img = loadImage("atlantaMap.png");
  textSize(24);
  textAlign(CENTER);
  fill(#D22B2B);
}

void draw() {
  background(255);
  push();
  translate(0, 300, -300);
  rotateX(PI/2.75);
  image(img, 0, 0, width, height);
  pop();
  for (Word w : data) {
    w.display(); 
    w.move();
  }
}

void loadFile(String filename) {
  String[] lines = loadStrings(filename);
  String allText = join(lines, " ").toLowerCase();
  String[] tokens = splitTokens(allText, " ,.?!:;[]-\"'");
  for (String s : tokens) {
    Word w = new Word(s);
    data.add(w);
  }
}
