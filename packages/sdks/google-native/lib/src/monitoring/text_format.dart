/// How the text content is formatted.
enum TextFormat {
  formatUnspecified("FORMAT_UNSPECIFIED"),
  markdown("MARKDOWN"),
  raw("RAW");

  const TextFormat(this.wireValue);
  final String wireValue;

  static TextFormat fromValue(String value) {
    for (final item in TextFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextFormat value: $value');
  }
}
