// First share tables and discuss what makes a table
// and issues loading tables (share/discuss image)

Table table; // global variable (a table object)

void setup() {
  table = loadTable("samplePlaces.csv", "header");
  println(table.getRowCount() + " total rows in table");
  //for (TableRow row : table.rows()) {
  //  String place = row.getString("place");
  //  String address = row.getString("address");
  //  int zip = row.getInt("zip code");
  //  println (place, address, zip);
  //  // println(place + " has an address of " + address + " and a zip code of " + zip);
  //}
}
