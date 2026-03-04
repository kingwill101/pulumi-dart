/// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
enum AttachedDiskType {
  persistent("PERSISTENT"),
  scratch("SCRATCH");

  const AttachedDiskType(this.wireValue);
  final String wireValue;

  static AttachedDiskType fromValue(String value) {
    for (final item in AttachedDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskType value: $value');
  }
}
