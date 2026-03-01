/// Custom image architecture.
enum ImageArchitecture {
  valueX64("x64");

  const ImageArchitecture(this.value);
  final String value;

  static ImageArchitecture fromValue(String value) {
    for (final item in ImageArchitecture.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageArchitecture value: $value');
  }
}

