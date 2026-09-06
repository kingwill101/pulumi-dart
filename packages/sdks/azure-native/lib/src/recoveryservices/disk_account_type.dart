import 'package:pulumi/pulumi.dart' as pulumi;

/// The disk type.
enum DiskAccountType implements pulumi.PulumiEnum<String> {
  valueStandardLRS("Standard_LRS"),
  valuePremiumLRS("Premium_LRS"),
  valueStandardSSDLRS("StandardSSD_LRS"),
  valuePremiumV2LRS("PremiumV2_LRS"),
  valueUltraSSDLRS("UltraSSD_LRS"),
  valueStandardSSDZRS("StandardSSD_ZRS"),
  valuePremiumZRS("Premium_ZRS");

  const DiskAccountType(this.wireValue);
  @override
  final String wireValue;

  static DiskAccountType fromValue(String value) {
    for (final item in DiskAccountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskAccountType value: $value');
  }
}
