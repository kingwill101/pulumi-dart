/// Determines how messages that fail to parse are handled.
enum SchemaPackageSchematizedParsingTypeHealthcareV1beta1 {
  schematizedParsingTypeUnspecified("SCHEMATIZED_PARSING_TYPE_UNSPECIFIED"),
  softFail("SOFT_FAIL"),
  hardFail("HARD_FAIL");

  const SchemaPackageSchematizedParsingTypeHealthcareV1beta1(this.wireValue);
  final String wireValue;

  static SchemaPackageSchematizedParsingTypeHealthcareV1beta1 fromValue(
    String value,
  ) {
    for (final item
        in SchemaPackageSchematizedParsingTypeHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SchemaPackageSchematizedParsingTypeHealthcareV1beta1 value: $value',
    );
  }
}
