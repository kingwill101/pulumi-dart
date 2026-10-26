import 'package:pulumi/pulumi.dart' as pulumi;

/// The architecture of the image. Valid values are ARM64 or X86_64.
enum ImageArchitecture implements pulumi.PulumiEnum<String> {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const ImageArchitecture(this.wireValue);
  @override
  final String wireValue;

  static ImageArchitecture fromValue(String value) {
    for (final item in ImageArchitecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageArchitecture value: $value');
  }
}
