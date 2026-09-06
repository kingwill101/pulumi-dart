import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom image architecture.
enum ImageArchitecture implements pulumi.PulumiEnum<String> {
  valueX64("x64");

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
