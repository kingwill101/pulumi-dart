import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines how unexpected segments (segments not matched to the schema) are handled.
enum SchemaPackageUnexpectedSegmentHandling implements pulumi.PulumiEnum<String> {
  unexpectedSegmentHandlingModeUnspecified("UNEXPECTED_SEGMENT_HANDLING_MODE_UNSPECIFIED"),
  fail("FAIL"),
  skip("SKIP"),
  parse("PARSE");

  const SchemaPackageUnexpectedSegmentHandling(this.wireValue);
  @override
  final String wireValue;

  static SchemaPackageUnexpectedSegmentHandling fromValue(String value) {
    for (final item in SchemaPackageUnexpectedSegmentHandling.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaPackageUnexpectedSegmentHandling value: $value');
  }
}
