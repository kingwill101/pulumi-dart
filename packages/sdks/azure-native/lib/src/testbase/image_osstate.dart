/// Custom image OS state.
enum ImageOSState {
  valueGeneralized("Generalized"),
  valueSpecialized("Specialized");

  const ImageOSState(this.wireValue);
  final String wireValue;

  static ImageOSState fromValue(String value) {
    for (final item in ImageOSState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageOSState value: $value');
  }
}

