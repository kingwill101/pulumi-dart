import 'package:pulumi/pulumi.dart' as pulumi;

/// The license type to apply for this database. `LicenseIncluded` if you need a license, or `BasePrice` if you have a license and are eligible for the Azure Hybrid Benefit.
enum DatabaseLicenseType implements pulumi.PulumiEnum<String> {
  valueLicenseIncluded("LicenseIncluded"),
  valueBasePrice("BasePrice");

  const DatabaseLicenseType(this.wireValue);
  @override
  final String wireValue;

  static DatabaseLicenseType fromValue(String value) {
    for (final item in DatabaseLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseLicenseType value: $value');
  }
}
