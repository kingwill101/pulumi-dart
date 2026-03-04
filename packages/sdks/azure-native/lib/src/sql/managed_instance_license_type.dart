/// The license type. Possible values are 'LicenseIncluded' (regular price inclusive of a new SQL license) and 'BasePrice' (discounted AHB price for bringing your own SQL licenses).
enum ManagedInstanceLicenseType {
  valueLicenseIncluded("LicenseIncluded"),
  valueBasePrice("BasePrice");

  const ManagedInstanceLicenseType(this.wireValue);
  final String wireValue;

  static ManagedInstanceLicenseType fromValue(String value) {
    for (final item in ManagedInstanceLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedInstanceLicenseType value: $value');
  }
}
