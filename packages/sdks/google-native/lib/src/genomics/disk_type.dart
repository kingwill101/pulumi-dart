/// Required. The type of the disk to create.
enum DiskType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  persistentHdd("PERSISTENT_HDD"),
  persistentSsd("PERSISTENT_SSD"),
  localSsd("LOCAL_SSD");

  const DiskType(this.wireValue);
  final String wireValue;

  static DiskType fromValue(String value) {
    for (final item in DiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskType value: $value');
  }
}
