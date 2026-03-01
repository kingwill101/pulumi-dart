/// The file type of source file.
enum FileContentBufferFileTypeComputeV1 {
  bin("BIN"),
  undefined("UNDEFINED"),
  x509("X509");

  const FileContentBufferFileTypeComputeV1(this.value);
  final String value;

  static FileContentBufferFileTypeComputeV1 fromValue(String value) {
    for (final item in FileContentBufferFileTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileContentBufferFileTypeComputeV1 value: $value');
  }
}

