import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The edition of the given Cloud SQL instance.
enum CloudSqlSettingsEdition implements pulumi.PulumiEnum<String> {
  editionUnspecified("EDITION_UNSPECIFIED"),
  enterprise("ENTERPRISE"),
  enterprisePlus("ENTERPRISE_PLUS");

  const CloudSqlSettingsEdition(this.wireValue);
  @override
  final String wireValue;

  static CloudSqlSettingsEdition fromValue(String value) {
    for (final item in CloudSqlSettingsEdition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudSqlSettingsEdition value: $value');
  }
}
