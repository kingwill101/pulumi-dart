/// Optional. Indicates the type of the disk.
enum BootDiskDiskType {
  diskTypeUnspecified("DISK_TYPE_UNSPECIFIED"),
  pdStandard("PD_STANDARD"),
  pdSsd("PD_SSD"),
  pdBalanced("PD_BALANCED"),
  pdExtreme("PD_EXTREME");

  const BootDiskDiskType(this.value);
  final String value;

  static BootDiskDiskType fromValue(String value) {
    for (final item in BootDiskDiskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BootDiskDiskType value: $value');
  }
}

