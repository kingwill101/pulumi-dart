/// Custom image source type.
enum ImageSource {
  valueUnknown("Unknown"),
  valueVHD("VHD");

  const ImageSource(this.wireValue);
  final String wireValue;

  static ImageSource fromValue(String value) {
    for (final item in ImageSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSource value: $value');
  }
}

