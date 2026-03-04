/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum RegionDiskArchitectureComputeBeta {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const RegionDiskArchitectureComputeBeta(this.wireValue);
  final String wireValue;

  static RegionDiskArchitectureComputeBeta fromValue(String value) {
    for (final item in RegionDiskArchitectureComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionDiskArchitectureComputeBeta value: $value',
    );
  }
}
