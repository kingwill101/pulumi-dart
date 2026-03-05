/// The file type of source file.
enum FileContentBufferFileTypeComputeBeta {
  bin("BIN"),
  undefined("UNDEFINED"),
  x509("X509");

  const FileContentBufferFileTypeComputeBeta(this.wireValue);
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

