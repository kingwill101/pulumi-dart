/// The visibility of the auth config.
enum AuthConfigVisibility {
  authConfigVisibilityUnspecified("AUTH_CONFIG_VISIBILITY_UNSPECIFIED"),
  private("PRIVATE"),
  clientVisible("CLIENT_VISIBLE");

  const AuthConfigVisibility(this.wireValue);
  final String wireValue;

  static AuthConfigVisibility fromValue(String value) {
    for (final item in AuthConfigVisibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthConfigVisibility value: $value');
  }
}

