ArrayList<Word> myData = new ArrayList<Word>();
PImage img;

void setup() {
  size(1000, 500);
  loadMyData();
  img = loadImage("atlantaMap.png");
  textSize(24);
  textAlign(CENTER);
}

void draw() {
  background(255);
  image(img, 0, 0, width, height);
  fill(0);
  fill(#ff7f00);
  for (Word w : myData) {
    w.display(); 
    w.move();
  }
}

void loadMyData() {
  Table table = loadTable("my-data.csv", "header");
  for (TableRow row : table.rows()) {
    String place = row.getString("place");
    String address = row.getString("address");
    int zip = row.getInt("zip code");
    String behavior = row.getString("behavior");
    String combined = place + " has an address of " + address + " and a zip code of " + zip;
    Word a = new Word(combined);
    myData.add(a);
    //Word a = new Word(place);
    //Word b = new Word(address);
    //Word c = new Word(behavior);
    //myData.add(a);
    //myData.add(b);
    //myData.add(c);
  }
}
