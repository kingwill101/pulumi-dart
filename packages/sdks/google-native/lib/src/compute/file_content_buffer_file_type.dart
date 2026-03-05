/// The file type of source file.
enum FileContentBufferFileType {
  bin("BIN"),
  undefined("UNDEFINED"),
  x509("X509");

  const FileContentBufferFileType(this.wireValue);
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

