/// Custom image architecture.
enum ImageArchitecture {
  valueX64("x64");

  const ImageArchitecture(this.wireValue);
  final String wireValue;

  static ImageArchitecture fromValue(String value) {
    for (final item in ImageArchitecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageArchitecture value: $value');
  }
}

