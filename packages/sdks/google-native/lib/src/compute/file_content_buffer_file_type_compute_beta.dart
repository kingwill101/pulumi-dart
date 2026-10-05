import 'package:pulumi/pulumi.dart' as pulumi;

/// The file type of source file.
enum FileContentBufferFileTypeComputeBeta implements pulumi.PulumiEnum<String> {
  bin("BIN"),
  undefined("UNDEFINED"),
  x509("X509");

  const FileContentBufferFileTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static FileContentBufferFileTypeComputeBeta fromValue(String value) {
    for (final item in FileContentBufferFileTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileContentBufferFileTypeComputeBeta value: $value');
  }
}
