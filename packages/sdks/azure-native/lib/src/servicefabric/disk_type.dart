/// Managed data disk type. Specifies the storage account type for the managed disk
enum DiskType {
  valueStandardLRS("Standard_LRS"),
  valueStandardSSDLRS("StandardSSD_LRS"),
  valuePremiumLRS("Premium_LRS");

  const DiskType(this.wireValue);
  final String wireValue;

  static DiskType fromValue(String value) {
    for (final item in DiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskType value: $value');
  }
}
