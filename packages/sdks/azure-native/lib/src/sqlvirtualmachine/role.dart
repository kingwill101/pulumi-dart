/// Replica Role in availability group.
enum Role {
  primary("Primary"),
  secondary("Secondary");

  const Role(this.wireValue);
  final String wireValue;

  static Role fromValue(String value) {
    for (final item in Role.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Role value: $value');
  }
}
