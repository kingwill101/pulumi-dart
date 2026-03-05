/// Ingress visibility.
enum Visibility {
  valuePrivate("Private"),
  valuePublic("Public");

  const Visibility(this.wireValue);
  final String wireValue;

  static Visibility fromValue(String value) {
    for (final item in Visibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Visibility value: $value');
  }
}

