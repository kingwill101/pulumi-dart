enum CacheMode {
  valueMin("min"),
  valueMax("max");

  const CacheMode(this.wireValue);
  final String wireValue;

  static CacheMode fromValue(String value) {
    for (final item in CacheMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheMode value: $value');
  }
}

