/// [Deprecated] Storage type of the persistent disk.
enum RegionDiskStorageType {
  hdd("HDD"),
  ssd("SSD");

  const RegionDiskStorageType(this.value);
  final String value;

  static RegionDiskStorageType fromValue(String value) {
    for (final item in RegionDiskStorageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskStorageType value: $value');
  }
}

