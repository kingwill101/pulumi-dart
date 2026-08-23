/// The type of the image used to create this disk. The default and only valid value is RAW.
enum ImageSourceTypeComputeBeta {
  raw("RAW");

  const ImageSourceTypeComputeBeta(this.wireValue);
  final String wireValue;

  static ImageSourceTypeComputeBeta fromValue(String value) {
    for (final item in ImageSourceTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSourceTypeComputeBeta value: $value');
  }
}
