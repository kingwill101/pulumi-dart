/// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
enum AttachedDiskTypeComputeBeta {
  persistent("PERSISTENT"),
  scratch("SCRATCH");

  const AttachedDiskTypeComputeBeta(this.wireValue);
  final String wireValue;

  static AttachedDiskTypeComputeBeta fromValue(String value) {
    for (final item in AttachedDiskTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskTypeComputeBeta value: $value');
  }
}

