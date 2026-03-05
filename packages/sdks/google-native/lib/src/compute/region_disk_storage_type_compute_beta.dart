/// [Deprecated] Storage type of the persistent disk.
enum RegionDiskStorageTypeComputeBeta {
  hdd("HDD"),
  ssd("SSD");

  const RegionDiskStorageTypeComputeBeta(this.wireValue);
  final String wireValue;

  static RegionDiskStorageTypeComputeBeta fromValue(String value) {
    for (final item in RegionDiskStorageTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskStorageTypeComputeBeta value: $value');
  }
}

