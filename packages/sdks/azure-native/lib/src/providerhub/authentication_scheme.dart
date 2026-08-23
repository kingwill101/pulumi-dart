/// The authentication scheme.
enum AuthenticationScheme {
  poP("PoP"),
  bearer("Bearer");

  const AuthenticationScheme(this.wireValue);
  final String wireValue;

  static AuthenticationScheme fromValue(String value) {
    for (final item in AuthenticationScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationScheme value: $value');
  }
}
