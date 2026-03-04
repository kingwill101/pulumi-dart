/// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
enum PackageArchitecture {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  x86("X86"),
  x64("X64");

  const PackageArchitecture(this.wireValue);
  final String wireValue;

  static PackageArchitecture fromValue(String value) {
    for (final item in PackageArchitecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageArchitecture value: $value');
  }
}
