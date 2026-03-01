/// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
enum InstanceBootDiskType {
  diskTypeUnspecified("DISK_TYPE_UNSPECIFIED"),
  pdStandard("PD_STANDARD"),
  pdSsd("PD_SSD"),
  pdBalanced("PD_BALANCED"),
  pdExtreme("PD_EXTREME");

  const InstanceBootDiskType(this.value);
  final String value;

  static InstanceBootDiskType fromValue(String value) {
    for (final item in InstanceBootDiskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceBootDiskType value: $value');
  }
}

