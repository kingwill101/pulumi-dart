/// The license type for Linux VM's.
enum LinuxLicenseType {
  valueNotSpecified("NotSpecified"),
  valueNoLicenseType("NoLicenseType"),
  valueLinuxServer("LinuxServer");

  const LinuxLicenseType(this.wireValue);
  final String wireValue;

  static LinuxLicenseType fromValue(String value) {
    for (final item in LinuxLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxLicenseType value: $value');
  }
}
