Table table; // global variable (a table object)

void setup() {
  table = loadTable("sierraTable.csv", "header");
  fullScreen();
  textSize(24);
  fill(0);
}

void draw() {
  background(255);
  for (int i = 0; i < table.getRowCount(); i ++) {
    TableRow row = table.getRow(i);
    String place = row.getString("place");
    String address = row.getString("address");
    int zip = row.getInt("zip code");
    String combined = place + " has an address of " + address + " and a zip code of " + zip;
    text(combined, 50, 50 + i * 50);
  }
}
