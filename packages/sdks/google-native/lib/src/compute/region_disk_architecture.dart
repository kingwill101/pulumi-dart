/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum RegionDiskArchitecture {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const RegionDiskArchitecture(this.wireValue);
  final String wireValue;

  static RegionDiskArchitecture fromValue(String value) {
    for (final item in RegionDiskArchitecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskArchitecture value: $value');
  }
}

