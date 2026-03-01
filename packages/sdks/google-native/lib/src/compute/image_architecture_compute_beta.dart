/// The architecture of the image. Valid values are ARM64 or X86_64.
enum ImageArchitectureComputeBeta {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const ImageArchitectureComputeBeta(this.value);
  final String value;

  static ImageArchitectureComputeBeta fromValue(String value) {
    for (final item in ImageArchitectureComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageArchitectureComputeBeta value: $value');
  }
}

