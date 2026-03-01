/// The storage account type used to store backups for this sql pool.
enum StorageAccountType {
  valueGRS("GRS"),
  valueLRS("LRS");

  const StorageAccountType(this.value);
  final String value;

  static StorageAccountType fromValue(String value) {
    for (final item in StorageAccountType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountType value: $value');
  }
}

