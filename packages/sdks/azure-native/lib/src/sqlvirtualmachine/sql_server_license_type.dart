import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server license type.
enum SqlServerLicenseType implements pulumi.PulumiEnum<String> {
  pAYG("PAYG"),
  aHUB("AHUB"),
  dR("DR");

  const SqlServerLicenseType(this.wireValue);
  @override
  final String wireValue;

  static SqlServerLicenseType fromValue(String value) {
    for (final item in SqlServerLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlServerLicenseType value: $value');
  }
}
