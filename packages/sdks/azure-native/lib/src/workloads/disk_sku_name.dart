/// Defines the disk sku name.
enum DiskSkuName {
  standardLRS("Standard_LRS"),
  premiumLRS("Premium_LRS"),
  standardSSDLRS("StandardSSD_LRS"),
  ultraSSDLRS("UltraSSD_LRS"),
  premiumZRS("Premium_ZRS"),
  standardSSDZRS("StandardSSD_ZRS"),
  premiumV2LRS("PremiumV2_LRS");

  const DiskSkuName(this.wireValue);
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
