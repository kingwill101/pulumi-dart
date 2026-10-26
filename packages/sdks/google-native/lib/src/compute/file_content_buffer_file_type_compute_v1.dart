import 'package:pulumi/pulumi.dart' as pulumi;

/// The file type of source file.
enum FileContentBufferFileTypeComputeV1 implements pulumi.PulumiEnum<String> {
  bin("BIN"),
  undefined("UNDEFINED"),
  x509("X509");

  const FileContentBufferFileTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static FileContentBufferFileTypeComputeV1 fromValue(String value) {
    for (final item in FileContentBufferFileTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileContentBufferFileTypeComputeV1 value: $value');
  }
}
