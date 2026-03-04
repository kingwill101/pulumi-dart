/// [Deprecated] Storage type of the persistent disk.
enum DiskStorageTypeComputeBeta {
  hdd("HDD"),
  ssd("SSD");

  const DiskStorageTypeComputeBeta(this.wireValue);
  final String wireValue;

  static DiskStorageTypeComputeBeta fromValue(String value) {
    for (final item in DiskStorageTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskStorageTypeComputeBeta value: $value');
  }
}
