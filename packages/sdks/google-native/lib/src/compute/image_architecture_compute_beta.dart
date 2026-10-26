import 'package:pulumi/pulumi.dart' as pulumi;

/// The architecture of the image. Valid values are ARM64 or X86_64.
enum ImageArchitectureComputeBeta implements pulumi.PulumiEnum<String> {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const ImageArchitectureComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static ImageArchitectureComputeBeta fromValue(String value) {
    for (final item in ImageArchitectureComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageArchitectureComputeBeta value: $value');
  }
}
