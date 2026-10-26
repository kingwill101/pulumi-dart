import 'package:pulumi/pulumi.dart' as pulumi;

/// The file type of source file.
enum FileContentBufferFileType implements pulumi.PulumiEnum<String> {
  bin("BIN"),
  undefined("UNDEFINED"),
  x509("X509");

  const FileContentBufferFileType(this.wireValue);
  @override
  final String wireValue;

  static FileContentBufferFileType fromValue(String value) {
    for (final item in FileContentBufferFileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileContentBufferFileType value: $value');
  }
}
