/// Deprecated. This field is unused.
enum OrganizationSinkOutputVersionFormat {
  versionFormatUnspecified("VERSION_FORMAT_UNSPECIFIED"),
  v2("V2"),
  v1("V1");

  const OrganizationSinkOutputVersionFormat(this.wireValue);
  final String wireValue;

  static OrganizationSinkOutputVersionFormat fromValue(String value) {
    for (final item in OrganizationSinkOutputVersionFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationSinkOutputVersionFormat value: $value');
  }
}

