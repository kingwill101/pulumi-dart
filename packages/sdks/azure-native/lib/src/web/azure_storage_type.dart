/// Type of storage.
enum AzureStorageType {
  valueAzureFiles("AzureFiles"),
  valueAzureBlob("AzureBlob");

  const AzureStorageType(this.value);
  final String value;

  static AzureStorageType fromValue(String value) {
    for (final item in AzureStorageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureStorageType value: $value');
  }
}

