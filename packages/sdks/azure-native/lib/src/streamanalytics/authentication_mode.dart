/// Authentication Mode.
enum AuthenticationMode {
  valueMsi("Msi"),
  valueUserToken("UserToken"),
  valueConnectionString("ConnectionString");

  const AuthenticationMode(this.wireValue);
  final String wireValue;

  static AuthenticationMode fromValue(String value) {
    for (final item in AuthenticationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMode value: $value');
  }
}
