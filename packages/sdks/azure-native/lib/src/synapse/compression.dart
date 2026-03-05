/// The event hub messages compression type
enum Compression {
  valueNone("None"),
  valueGZip("GZip");

  const Compression(this.wireValue);
  final String wireValue;

  static Compression fromValue(String value) {
    for (final item in Compression.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Compression value: $value');
  }
}

