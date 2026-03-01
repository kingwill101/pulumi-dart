/// The content type of this file.
enum FileImportContentType {
  valueBasicIndicator("BasicIndicator"),
  valueStixIndicator("StixIndicator"),
  valueUnspecified("Unspecified");

  const FileImportContentType(this.value);
  final String value;

  static FileImportContentType fromValue(String value) {
    for (final item in FileImportContentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileImportContentType value: $value');
  }
}

