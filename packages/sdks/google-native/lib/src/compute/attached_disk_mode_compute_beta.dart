/// The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode.
enum AttachedDiskModeComputeBeta {
  readOnly("READ_ONLY"),
  readWrite("READ_WRITE");

  const AttachedDiskModeComputeBeta(this.value);
  final String value;

  static AttachedDiskModeComputeBeta fromValue(String value) {
    for (final item in AttachedDiskModeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskModeComputeBeta value: $value');
  }
}

