ArrayList<Word> myData = new ArrayList<Word>();
ArrayList<Word> zipCodeData = new ArrayList<Word>();
PImage img;

void setup() {
  size(2000, 1000);
  loadMyData();
  loadFile("zip-codes.txt");
  img = loadImage("atlantaMap.png");
  textSize(24);
  textAlign(CENTER);
}

void draw() {
  background(255);
  image(img, 0, 0, width, height);
  fill(0);
  for (Word w : zipCodeData) {
    w.display(); 
    w.move();
  }
  fill(#ff7f00);
  for (Word w : myData) {
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
    zipCodeData.add(w);
  }
}

void loadMyData() {
  Table table = loadTable("my-data.csv", "header");
  for (TableRow row : table.rows()) {
    String place = row.getString("place");
    String address = row.getString("address");
    int zip = row.getInt("zip code");
    String combined = place + " has an address of " + address + " and a zip code of " + zip;

    Word w = new Word(combined);
    myData.add(w);
  }
}
