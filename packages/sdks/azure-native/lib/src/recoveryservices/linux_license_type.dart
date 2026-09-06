import 'package:pulumi/pulumi.dart' as pulumi;

/// The license type for Linux VM's.
enum LinuxLicenseType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueNoLicenseType("NoLicenseType"),
  valueLinuxServer("LinuxServer");

  const LinuxLicenseType(this.wireValue);
  @override
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
