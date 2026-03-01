/// Specifies the storage account type to be used to store the image in this region. Omit to use the default (Standard_LRS).
enum SharedImageStorageAccountType {
  valueStandardLRS("Standard_LRS"),
  valueStandardZRS("Standard_ZRS"),
  valuePremiumLRS("Premium_LRS");

  const SharedImageStorageAccountType(this.value);
  final String value;

  static SharedImageStorageAccountType fromValue(String value) {
    for (final item in SharedImageStorageAccountType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SharedImageStorageAccountType value: $value');
  }
}

