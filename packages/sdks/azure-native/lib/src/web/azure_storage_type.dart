/// Type of storage.
enum AzureStorageType {
  valueAzureFiles("AzureFiles"),
  valueAzureBlob("AzureBlob");

  const AzureStorageType(this.wireValue);
  final String wireValue;

  static AzureStorageType fromValue(String value) {
    for (final item in AzureStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureStorageType value: $value');
  }
}

