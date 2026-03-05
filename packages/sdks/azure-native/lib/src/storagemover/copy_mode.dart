/// Strategy to use for copy.
enum CopyMode {
  additive("Additive"),
  mirror("Mirror");

  const CopyMode(this.wireValue);
  final String wireValue;

  static CopyMode fromValue(String value) {
    for (final item in CopyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CopyMode value: $value');
  }
}

