/// The type of the image used to create this disk. The default and only valid value is RAW.
enum ImageSourceTypeComputeV1 {
  raw("RAW");

  const ImageSourceTypeComputeV1(this.value);
  final String value;

  static ImageSourceTypeComputeV1 fromValue(String value) {
    for (final item in ImageSourceTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSourceTypeComputeV1 value: $value');
  }
}

