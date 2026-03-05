/// The type of hash that was performed.
enum HashType {
  none("NONE"),
  sha256("SHA256");

  const HashType(this.wireValue);
  final String wireValue;

  static HashType fromValue(String value) {
    for (final item in HashType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HashType value: $value');
  }
}

