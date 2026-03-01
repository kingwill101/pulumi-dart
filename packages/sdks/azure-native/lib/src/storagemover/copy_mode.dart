/// Strategy to use for copy.
enum CopyMode {
  additive("Additive"),
  mirror("Mirror");

  const CopyMode(this.value);
  final String value;

  static CopyMode fromValue(String value) {
    for (final item in CopyMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CopyMode value: $value');
  }
}

