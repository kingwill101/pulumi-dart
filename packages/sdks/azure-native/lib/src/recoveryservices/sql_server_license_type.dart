/// The SQL Server license type.
enum SqlServerLicenseType {
  valueNotSpecified("NotSpecified"),
  valueNoLicenseType("NoLicenseType"),
  valuePAYG("PAYG"),
  valueAHUB("AHUB");

  const SqlServerLicenseType(this.wireValue);
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

