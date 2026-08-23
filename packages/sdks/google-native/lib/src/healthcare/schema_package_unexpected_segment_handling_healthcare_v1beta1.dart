/// Determines how unexpected segments (segments not matched to the schema) are handled.
enum SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1 {
  unexpectedSegmentHandlingModeUnspecified("UNEXPECTED_SEGMENT_HANDLING_MODE_UNSPECIFIED"),
  fail("FAIL"),
  skip("SKIP"),
  parse("PARSE");

  const SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1(this.wireValue);
  final String wireValue;

  static SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1 fromValue(String value) {
    for (final item in SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1 value: $value');
  }
}
