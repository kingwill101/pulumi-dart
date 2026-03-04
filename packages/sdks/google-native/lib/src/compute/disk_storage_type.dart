/// [Deprecated] Storage type of the persistent disk.
enum DiskStorageType {
  hdd("HDD"),
  ssd("SSD");

  const DiskStorageType(this.wireValue);
  final String wireValue;

  static DiskStorageType fromValue(String value) {
    for (final item in DiskStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskStorageType value: $value');
  }
}
