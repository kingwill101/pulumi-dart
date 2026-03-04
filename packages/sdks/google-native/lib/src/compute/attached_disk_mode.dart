/// The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode.
enum AttachedDiskMode {
  readOnly("READ_ONLY"),
  readWrite("READ_WRITE");

  const AttachedDiskMode(this.wireValue);
  final String wireValue;

  static AttachedDiskMode fromValue(String value) {
    for (final item in AttachedDiskMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskMode value: $value');
  }
}
