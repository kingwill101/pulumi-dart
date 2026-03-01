/// Extract status.
enum IntuneExtractStatus {
  valueReady("Ready"),
  valueUploading("Uploading"),
  valueUploadFailed("UploadFailed"),
  valueExtractFailed("ExtractFailed"),
  valueNoDependencyApp("NoDependencyApp");

  const IntuneExtractStatus(this.value);
  final String value;

  static IntuneExtractStatus fromValue(String value) {
    for (final item in IntuneExtractStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntuneExtractStatus value: $value');
  }
}

