/// Authentication Mode.
enum AuthenticationMode {
  valueMsi("Msi"),
  valueUserToken("UserToken"),
  valueConnectionString("ConnectionString");

  const AuthenticationMode(this.value);
  final String value;

  static AuthenticationMode fromValue(String value) {
    for (final item in AuthenticationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMode value: $value');
  }
}

