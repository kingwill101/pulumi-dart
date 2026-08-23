/// The OS Type
enum OSType {
  linux("Linux"),
  windows("Windows");

  const OSType(this.wireValue);
  final String wireValue;

  static OSType fromValue(String value) {
    for (final item in OSType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSType value: $value');
  }
}
