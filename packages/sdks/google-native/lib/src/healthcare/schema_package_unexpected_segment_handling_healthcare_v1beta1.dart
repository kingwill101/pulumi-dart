import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines how unexpected segments (segments not matched to the schema) are handled.
enum SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1 implements pulumi.PulumiEnum<String> {
  unexpectedSegmentHandlingModeUnspecified("UNEXPECTED_SEGMENT_HANDLING_MODE_UNSPECIFIED"),
  fail("FAIL"),
  skip("SKIP"),
  parse("PARSE");

  const SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1(this.wireValue);
  @override
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
