/// The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
enum AttachedDiskModeTpuV2alpha1 {
  diskModeUnspecified("DISK_MODE_UNSPECIFIED"),
  readWrite("READ_WRITE"),
  readOnly("READ_ONLY");

  const AttachedDiskModeTpuV2alpha1(this.value);
  final String value;

  static AttachedDiskModeTpuV2alpha1 fromValue(String value) {
    for (final item in AttachedDiskModeTpuV2alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskModeTpuV2alpha1 value: $value');
  }
}

