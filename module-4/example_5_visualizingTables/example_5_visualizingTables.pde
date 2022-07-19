// First, visit and explore: https://benfry.com/zipdecode/
// Then, work through this example and explore your own ways to visualize this data
// Also consider/discuss ethical dimensions of this data
// After, check out counting strings and HashMap example in AdvancedData

Table table; // global variable (a table object)

void setup() {
  table = loadTable("samplePlaces.csv", "header");
  textSize(24);
  fill(0);
  fullScreen();
}

void draw() {
  background(255);
  int spacing = 0;
  for (TableRow row : table.rows()) {
    String place = row.getString("place");
    String address = row.getString("address");
    int zip = row.getInt("zip code");
    String combined = place + " has an address of " + address + " and a zip code of " + zip;
    text(combined, 50, 50 + spacing);
    spacing += 50;
  }
}
