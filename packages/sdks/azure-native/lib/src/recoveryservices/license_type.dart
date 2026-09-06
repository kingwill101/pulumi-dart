import 'package:pulumi/pulumi.dart' as pulumi;

/// The license type.
enum LicenseType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueNoLicenseType("NoLicenseType"),
  valueWindowsServer("WindowsServer");

  const LicenseType(this.wireValue);
  @override
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
