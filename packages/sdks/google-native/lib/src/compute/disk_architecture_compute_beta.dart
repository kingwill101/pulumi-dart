/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum DiskArchitectureComputeBeta {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const DiskArchitectureComputeBeta(this.wireValue);
  final String wireValue;

  static DiskArchitectureComputeBeta fromValue(String value) {
    for (final item in DiskArchitectureComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskArchitectureComputeBeta value: $value');
  }
}
