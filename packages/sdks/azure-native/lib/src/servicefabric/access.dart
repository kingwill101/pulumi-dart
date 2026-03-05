/// The network traffic is allowed or denied.
enum Access {
  valueAllow("allow"),
  valueDeny("deny");

  const Access(this.wireValue);
  final String wireValue;

  static Access fromValue(String value) {
    for (final item in Access.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Access value: $value');
  }
}

