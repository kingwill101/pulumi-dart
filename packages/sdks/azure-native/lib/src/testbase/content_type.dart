/// The type of command content.
enum ContentType {
  valueInline("Inline"),
  valueFile("File"),
  valuePath("Path");

  const ContentType(this.value);
  final String value;

  static ContentType fromValue(String value) {
    for (final item in ContentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentType value: $value');
  }
}

