/// The format of the file
enum FileFormat {
  valueCSV("CSV"),
  valueJSON("JSON"),
  valueUnspecified("Unspecified");

  const FileFormat(this.wireValue);
  final String wireValue;

  static FileFormat fromValue(String value) {
    for (final item in FileFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileFormat value: $value');
  }
}
