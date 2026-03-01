/// The license type to apply for this database. `LicenseIncluded` if you need a license, or `BasePrice` if you have a license and are eligible for the Azure Hybrid Benefit.
enum DatabaseLicenseType {
  valueLicenseIncluded("LicenseIncluded"),
  valueBasePrice("BasePrice");

  const DatabaseLicenseType(this.value);
  final String value;

  static DatabaseLicenseType fromValue(String value) {
    for (final item in DatabaseLicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseLicenseType value: $value');
  }
}

