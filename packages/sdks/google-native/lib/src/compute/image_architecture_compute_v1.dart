/// The architecture of the image. Valid values are ARM64 or X86_64.
enum ImageArchitectureComputeV1 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const ImageArchitectureComputeV1(this.wireValue);
  final String wireValue;

  static ImageArchitectureComputeV1 fromValue(String value) {
    for (final item in ImageArchitectureComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageArchitectureComputeV1 value: $value');
  }
}
