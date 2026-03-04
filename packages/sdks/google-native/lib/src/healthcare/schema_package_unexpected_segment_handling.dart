/// Determines how unexpected segments (segments not matched to the schema) are handled.
enum SchemaPackageUnexpectedSegmentHandling {
  unexpectedSegmentHandlingModeUnspecified(
    "UNEXPECTED_SEGMENT_HANDLING_MODE_UNSPECIFIED",
  ),
  fail("FAIL"),
  skip("SKIP"),
  parse("PARSE");

  const SchemaPackageUnexpectedSegmentHandling(this.wireValue);
  final String wireValue;

  static SchemaPackageUnexpectedSegmentHandling fromValue(String value) {
    for (final item in SchemaPackageUnexpectedSegmentHandling.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SchemaPackageUnexpectedSegmentHandling value: $value',
    );
  }
}
