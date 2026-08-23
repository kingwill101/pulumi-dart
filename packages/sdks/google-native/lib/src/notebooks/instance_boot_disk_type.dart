/// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
enum InstanceBootDiskType {
  diskTypeUnspecified("DISK_TYPE_UNSPECIFIED"),
  pdStandard("PD_STANDARD"),
  pdSsd("PD_SSD"),
  pdBalanced("PD_BALANCED"),
  pdExtreme("PD_EXTREME");

  const InstanceBootDiskType(this.wireValue);
  final String wireValue;

  static InstanceBootDiskType fromValue(String value) {
    for (final item in InstanceBootDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceBootDiskType value: $value');
  }
}
