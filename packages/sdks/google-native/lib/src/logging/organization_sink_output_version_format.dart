import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated. This field is unused.
enum OrganizationSinkOutputVersionFormat implements pulumi.PulumiEnum<String> {
  versionFormatUnspecified("VERSION_FORMAT_UNSPECIFIED"),
  v2("V2"),
  v1("V1");

  const OrganizationSinkOutputVersionFormat(this.wireValue);
  @override
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
