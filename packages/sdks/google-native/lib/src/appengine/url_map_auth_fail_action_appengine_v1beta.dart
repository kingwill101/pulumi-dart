/// Action to take when users access resources that require authentication. Defaults to redirect.
enum UrlMapAuthFailActionAppengineV1beta {
  authFailActionUnspecified("AUTH_FAIL_ACTION_UNSPECIFIED"),
  authFailActionRedirect("AUTH_FAIL_ACTION_REDIRECT"),
  authFailActionUnauthorized("AUTH_FAIL_ACTION_UNAUTHORIZED");

  const UrlMapAuthFailActionAppengineV1beta(this.wireValue);
  final String wireValue;

  static UrlMapAuthFailActionAppengineV1beta fromValue(String value) {
    for (final item in UrlMapAuthFailActionAppengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown UrlMapAuthFailActionAppengineV1beta value: $value',
    );
  }
}
