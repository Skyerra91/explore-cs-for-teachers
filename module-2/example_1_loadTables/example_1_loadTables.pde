// First share tables and discuss what makes a table
// and issues loading tables (share/discuss image)

Table table; // global variable (a table object)

void setup() {
  table = loadTable("samplePlaces.csv", "header");
  println(table.getRowCount() + " total rows in table");
}
