import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the disk sku name.
enum DiskSkuName implements pulumi.PulumiEnum<String> {
  standardLRS("Standard_LRS"),
  premiumLRS("Premium_LRS"),
  standardSSDLRS("StandardSSD_LRS"),
  ultraSSDLRS("UltraSSD_LRS"),
  premiumZRS("Premium_ZRS"),
  standardSSDZRS("StandardSSD_ZRS"),
  premiumV2LRS("PremiumV2_LRS");

  const DiskSkuName(this.wireValue);
  @override
  final String wireValue;

  static DiskSkuName fromValue(String value) {
    for (final item in DiskSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskSkuName value: $value');
  }
}
