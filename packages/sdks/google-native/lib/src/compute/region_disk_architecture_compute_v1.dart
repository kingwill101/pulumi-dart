/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum RegionDiskArchitectureComputeV1 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const RegionDiskArchitectureComputeV1(this.value);
  final String value;

  static RegionDiskArchitectureComputeV1 fromValue(String value) {
    for (final item in RegionDiskArchitectureComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskArchitectureComputeV1 value: $value');
  }
}

