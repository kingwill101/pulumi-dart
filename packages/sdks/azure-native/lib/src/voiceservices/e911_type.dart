/// How to handle 911 calls
enum E911Type {
  standard("Standard"),
  directToEsrp("DirectToEsrp");

  const E911Type(this.value);
  final String value;

  static E911Type fromValue(String value) {
    for (final item in E911Type.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown E911Type value: $value');
  }
}

