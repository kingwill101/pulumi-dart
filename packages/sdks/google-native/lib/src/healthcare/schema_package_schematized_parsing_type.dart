/// Determines how messages that fail to parse are handled.
enum SchemaPackageSchematizedParsingType {
  schematizedParsingTypeUnspecified("SCHEMATIZED_PARSING_TYPE_UNSPECIFIED"),
  softFail("SOFT_FAIL"),
  hardFail("HARD_FAIL");

  const SchemaPackageSchematizedParsingType(this.wireValue);
  final String wireValue;

  static SchemaPackageSchematizedParsingType fromValue(String value) {
    for (final item in SchemaPackageSchematizedParsingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SchemaPackageSchematizedParsingType value: $value',
    );
  }
}
