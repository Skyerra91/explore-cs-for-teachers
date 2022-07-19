ArrayList<Word> data = new ArrayList<Word>();
PImage img;

void setup() {
  size(2000, 1000);
  loadFile("zip-codes.txt");
  img = loadImage("atlantaMap.png");
  textSize(24);
  textAlign(CENTER);
}

void draw() {
  background(255);
  image(img, 0, 0, width, height);
  fill(0);
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
