/// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
enum PackageNoteArchitecture {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  x86("X86"),
  x64("X64");

  const PackageNoteArchitecture(this.wireValue);
  final String wireValue;

  static PackageNoteArchitecture fromValue(String value) {
    for (final item in PackageNoteArchitecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageNoteArchitecture value: $value');
  }
}

