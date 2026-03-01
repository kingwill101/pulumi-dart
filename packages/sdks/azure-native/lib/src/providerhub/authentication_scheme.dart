/// The authentication scheme.
enum AuthenticationScheme {
  poP("PoP"),
  bearer("Bearer");

  const AuthenticationScheme(this.value);
  final String value;

  static AuthenticationScheme fromValue(String value) {
    for (final item in AuthenticationScheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationScheme value: $value');
  }
}

