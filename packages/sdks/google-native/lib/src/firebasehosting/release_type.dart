import 'package:pulumi/pulumi.dart' as pulumi;

/// Explains the reason for the release. Specify a value for this field only when creating a `SITE_DISABLE` type release.
enum ReleaseType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  deploy("DEPLOY"),
  rollback("ROLLBACK"),
  siteDisable("SITE_DISABLE");

  const ReleaseType(this.wireValue);
  @override
  final String wireValue;

  static ReleaseType fromValue(String value) {
    for (final item in ReleaseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReleaseType value: $value');
  }
}
