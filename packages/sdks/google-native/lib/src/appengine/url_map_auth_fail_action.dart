/// Action to take when users access resources that require authentication. Defaults to redirect.
enum UrlMapAuthFailAction {
  authFailActionUnspecified("AUTH_FAIL_ACTION_UNSPECIFIED"),
  authFailActionRedirect("AUTH_FAIL_ACTION_REDIRECT"),
  authFailActionUnauthorized("AUTH_FAIL_ACTION_UNAUTHORIZED");

  const UrlMapAuthFailAction(this.wireValue);
  final String wireValue;

  static UrlMapAuthFailAction fromValue(String value) {
    for (final item in UrlMapAuthFailAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlMapAuthFailAction value: $value');
  }
}
