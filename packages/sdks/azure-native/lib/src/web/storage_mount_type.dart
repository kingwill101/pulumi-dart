/// Type of the storage mount.
enum StorageMountType {
  azureFiles("AzureFiles"),
  localStorage("LocalStorage"),
  fileShare("FileShare");

  const StorageMountType(this.wireValue);
  final String wireValue;

  static StorageMountType fromValue(String value) {
    for (final item in StorageMountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageMountType value: $value');
  }
}
