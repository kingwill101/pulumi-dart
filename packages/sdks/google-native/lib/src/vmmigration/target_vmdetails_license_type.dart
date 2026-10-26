import 'package:pulumi/pulumi.dart' as pulumi;

/// The license type to use in OS adaptation.
enum TargetVMDetailsLicenseType implements pulumi.PulumiEnum<String> {
  default_("DEFAULT"),
  payg("PAYG"),
  byol("BYOL");

  const TargetVMDetailsLicenseType(this.wireValue);
  @override
  final String wireValue;

  static TargetVMDetailsLicenseType fromValue(String value) {
    for (final item in TargetVMDetailsLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetVMDetailsLicenseType value: $value');
  }
}
