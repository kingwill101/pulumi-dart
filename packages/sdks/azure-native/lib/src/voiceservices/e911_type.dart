/// How to handle 911 calls
enum E911Type {
  standard("Standard"),
  directToEsrp("DirectToEsrp");

  const E911Type(this.wireValue);
  final String wireValue;

  static E911Type fromValue(String value) {
    for (final item in E911Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown E911Type value: $value');
  }
}
