import 'package:pulumi/pulumi.dart' as pulumi;

/// The SQL Server license type.
enum SqlServerLicenseType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueNoLicenseType("NoLicenseType"),
  valuePAYG("PAYG"),
  valueAHUB("AHUB");

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
