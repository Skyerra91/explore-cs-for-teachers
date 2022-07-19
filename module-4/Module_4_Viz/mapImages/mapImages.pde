ArrayList<Word> data = new ArrayList<Word>();
PImage img;
Word[] myImages = new Word[5];


void setup() {
  size(2000, 1000);
  img = loadImage("atlantaMap.png");
  textSize(24);
  textAlign(CENTER);
  myImages[0] = new Word(loadImage("atlantaMap.png"));  // Assign value to first element in the array
  myImages[1] = new Word(loadImage("atlantaMap.png"));// Assign value to second element in the array
  myImages[2] = new Word(loadImage("atlantaMap.png")); // Assign value to third element in the array
  myImages[3] = new Word(loadImage("atlantaMap.png"));
  myImages[4] = new Word(loadImage("atlantaMap.png"));
}

void draw() {
  background(255);
  image(img, 0, 0, width, height);
  fill(0);
  for (Word w : myImages) {
    w.display(); 
    w.move();
  }
}

//void loadFile(String filename) {
//  String[] lines = loadStrings(filename);
//  String allText = join(lines, " ").toLowerCase();
//  String[] tokens = splitTokens(allText, " ,.?!:;[]-\"'");
//  for (String s : tokens) {
//    Word w = new Word(s);
//    data.add(w);
//  }
//}
