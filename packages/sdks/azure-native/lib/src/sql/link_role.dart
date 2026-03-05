/// Managed instance side link role
enum LinkRole {
  valuePrimary("Primary"),
  valueSecondary("Secondary");

  const LinkRole(this.wireValue);
  final String wireValue;

  static LinkRole fromValue(String value) {
    for (final item in LinkRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkRole value: $value');
  }
}

