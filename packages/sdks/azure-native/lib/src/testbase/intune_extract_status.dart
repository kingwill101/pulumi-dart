/// Extract status.
enum IntuneExtractStatus {
  valueReady("Ready"),
  valueUploading("Uploading"),
  valueUploadFailed("UploadFailed"),
  valueExtractFailed("ExtractFailed"),
  valueNoDependencyApp("NoDependencyApp");

  const IntuneExtractStatus(this.wireValue);
  final String wireValue;

  static IntuneExtractStatus fromValue(String value) {
    for (final item in IntuneExtractStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntuneExtractStatus value: $value');
  }
}
