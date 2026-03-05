/// The authentication type
enum AuthenticationType {
  valueAccessToken("AccessToken");

  const AuthenticationType(this.wireValue);
  final String wireValue;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}

