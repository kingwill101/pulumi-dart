/// The architecture of the image. Valid values are ARM64 or X86_64.
enum ImageArchitecture {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const ImageArchitecture(this.value);
  final String value;

  static ImageArchitecture fromValue(String value) {
    for (final item in ImageArchitecture.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageArchitecture value: $value');
  }
}

