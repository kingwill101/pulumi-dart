/// Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
enum NfsExportOptionsAccessMode {
  accessModeUnspecified("ACCESS_MODE_UNSPECIFIED"),
  readOnly("READ_ONLY"),
  readWrite("READ_WRITE");

  const NfsExportOptionsAccessMode(this.value);
  final String value;

  static NfsExportOptionsAccessMode fromValue(String value) {
    for (final item in NfsExportOptionsAccessMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsExportOptionsAccessMode value: $value');
  }
}

