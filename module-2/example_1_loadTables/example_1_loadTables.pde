Table table; // global variable (a table object)

void setup() {
  table = loadTable("sierraTable.csv", "header");
  println(table.getRowCount() + " total rows in table");
}
