/// Deprecated. This field is unused.
enum FolderSinkOutputVersionFormat {
  versionFormatUnspecified("VERSION_FORMAT_UNSPECIFIED"),
  v2("V2"),
  v1("V1");

  const FolderSinkOutputVersionFormat(this.wireValue);
  final String wireValue;

  static FolderSinkOutputVersionFormat fromValue(String value) {
    for (final item in FolderSinkOutputVersionFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FolderSinkOutputVersionFormat value: $value');
  }
}

