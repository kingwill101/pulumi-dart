/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum DiskArchitecture {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const DiskArchitecture(this.value);
  final String value;

  static DiskArchitecture fromValue(String value) {
    for (final item in DiskArchitecture.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskArchitecture value: $value');
  }
}

