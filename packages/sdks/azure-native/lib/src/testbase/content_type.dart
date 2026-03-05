/// The type of command content.
enum ContentType {
  valueInline("Inline"),
  valueFile("File"),
  valuePath("Path");

  const ContentType(this.wireValue);
  final String wireValue;

  static ContentType fromValue(String value) {
    for (final item in ContentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentType value: $value');
  }
}

