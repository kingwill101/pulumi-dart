/// The access mode of the disk. - READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode. - READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode. - READ_ONLY_MANY: The AccessMode means the disk can be attached to multiple instances in RO mode. The AccessMode is only valid for Hyperdisk disk types.
enum DiskAccessMode {
  readOnlyMany("READ_ONLY_MANY"),
  readWriteMany("READ_WRITE_MANY"),
  readWriteSingle("READ_WRITE_SINGLE");

  const DiskAccessMode(this.wireValue);
  final String wireValue;

  static DiskAccessMode fromValue(String value) {
    for (final item in DiskAccessMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskAccessMode value: $value');
  }
}
