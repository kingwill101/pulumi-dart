/// Managed data disk type. Specifies the storage account type for the managed disk
enum DiskType {
  valueStandardLRS("Standard_LRS"),
  valueStandardSSDLRS("StandardSSD_LRS"),
  valuePremiumLRS("Premium_LRS");

  const DiskType(this.value);
  final String value;

  static DiskType fromValue(String value) {
    for (final item in DiskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskType value: $value');
  }
}

