/// The disk type.
enum DiskAccountType {
  valueStandardLRS("Standard_LRS"),
  valuePremiumLRS("Premium_LRS"),
  valueStandardSSDLRS("StandardSSD_LRS"),
  valuePremiumV2LRS("PremiumV2_LRS"),
  valueUltraSSDLRS("UltraSSD_LRS"),
  valueStandardSSDZRS("StandardSSD_ZRS"),
  valuePremiumZRS("Premium_ZRS");

  const DiskAccountType(this.value);
  final String value;

  static DiskAccountType fromValue(String value) {
    for (final item in DiskAccountType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskAccountType value: $value');
  }
}

