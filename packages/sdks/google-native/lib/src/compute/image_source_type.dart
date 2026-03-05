/// The type of the image used to create this disk. The default and only valid value is RAW.
enum ImageSourceType {
  raw("RAW");

  const ImageSourceType(this.wireValue);
  final String wireValue;

  static ImageSourceType fromValue(String value) {
    for (final item in ImageSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSourceType value: $value');
  }
}

