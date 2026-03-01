/// Custom image source type.
enum ImageSource {
  valueUnknown("Unknown"),
  valueVHD("VHD");

  const ImageSource(this.value);
  final String value;

  static ImageSource fromValue(String value) {
    for (final item in ImageSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSource value: $value');
  }
}

