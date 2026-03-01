enum EnvironmentPermission {
  valueNone("none"),
  valueRead("read"),
  valueOpen("open"),
  valueWrite("write"),
  valueAdmin("admin");

  const EnvironmentPermission(this.value);
  final String value;

  static EnvironmentPermission fromValue(String value) {
    for (final item in EnvironmentPermission.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentPermission value: $value');
  }
}

