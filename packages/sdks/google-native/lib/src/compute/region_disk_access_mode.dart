/// The access mode of the disk. - READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode. - READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode. - READ_ONLY_MANY: The AccessMode means the disk can be attached to multiple instances in RO mode. The AccessMode is only valid for Hyperdisk disk types.
enum RegionDiskAccessMode {
  readOnlyMany("READ_ONLY_MANY"),
  readWriteMany("READ_WRITE_MANY"),
  readWriteSingle("READ_WRITE_SINGLE");

  const RegionDiskAccessMode(this.wireValue);
  final String wireValue;

  static RegionDiskAccessMode fromValue(String value) {
    for (final item in RegionDiskAccessMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskAccessMode value: $value');
  }
}

