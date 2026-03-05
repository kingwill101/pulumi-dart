/// Whether storage account lock is to be acquired for this container or not.
enum AcquireStorageAccountLock {
  valueAcquire("Acquire"),
  valueNotAcquire("NotAcquire");

  const AcquireStorageAccountLock(this.wireValue);
  final String wireValue;

  static AcquireStorageAccountLock fromValue(String value) {
    for (final item in AcquireStorageAccountLock.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcquireStorageAccountLock value: $value');
  }
}

