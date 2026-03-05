enum NetworkMode {
  valueDefault("default"),
  valueHost("host"),
  valueNone("none");

  const NetworkMode(this.wireValue);
  final String wireValue;

  static NetworkMode fromValue(String value) {
    for (final item in NetworkMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkMode value: $value');
  }
}

