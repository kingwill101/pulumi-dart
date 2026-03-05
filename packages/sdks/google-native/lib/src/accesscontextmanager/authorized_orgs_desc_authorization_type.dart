/// A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`.
enum AuthorizedOrgsDescAuthorizationType {
  authorizationTypeUnspecified("AUTHORIZATION_TYPE_UNSPECIFIED"),
  authorizationTypeTrust("AUTHORIZATION_TYPE_TRUST");

  const AuthorizedOrgsDescAuthorizationType(this.wireValue);
  final String wireValue;

  static AuthorizedOrgsDescAuthorizationType fromValue(String value) {
    for (final item in AuthorizedOrgsDescAuthorizationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizedOrgsDescAuthorizationType value: $value');
  }
}

