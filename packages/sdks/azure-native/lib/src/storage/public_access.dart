/// Specifies whether data in the container may be accessed publicly and the level of access.
enum PublicAccess {
  valueContainer("Container"),
  valueBlob("Blob"),
  valueNone("None");

  const PublicAccess(this.wireValue);
  final String wireValue;

  static PublicAccess fromValue(String value) {
    for (final item in PublicAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicAccess value: $value');
  }
}

