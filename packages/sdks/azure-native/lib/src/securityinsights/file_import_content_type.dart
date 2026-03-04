/// The content type of this file.
enum FileImportContentType {
  valueBasicIndicator("BasicIndicator"),
  valueStixIndicator("StixIndicator"),
  valueUnspecified("Unspecified");

  const FileImportContentType(this.wireValue);
  final String wireValue;

  static FileImportContentType fromValue(String value) {
    for (final item in FileImportContentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileImportContentType value: $value');
  }
}
