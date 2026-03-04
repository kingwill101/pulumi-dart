/// The license type.
enum LicenseType {
  valueNotSpecified("NotSpecified"),
  valueNoLicenseType("NoLicenseType"),
  valueWindowsServer("WindowsServer");

  const LicenseType(this.wireValue);
  final String wireValue;

  static LicenseType fromValue(String value) {
    for (final item in LicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseType value: $value');
  }
}
