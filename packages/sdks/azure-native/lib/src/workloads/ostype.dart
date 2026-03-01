/// The OS Type
enum OSType {
  linux("Linux"),
  windows("Windows");

  const OSType(this.value);
  final String value;

  static OSType fromValue(String value) {
    for (final item in OSType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSType value: $value');
  }
}

