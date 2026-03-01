/// Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
enum InstanceDataDiskType {
  diskTypeUnspecified("DISK_TYPE_UNSPECIFIED"),
  pdStandard("PD_STANDARD"),
  pdSsd("PD_SSD"),
  pdBalanced("PD_BALANCED"),
  pdExtreme("PD_EXTREME");

  const InstanceDataDiskType(this.value);
  final String value;

  static InstanceDataDiskType fromValue(String value) {
    for (final item in InstanceDataDiskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceDataDiskType value: $value');
  }
}

