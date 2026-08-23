/// Action to take when users access resources that require authentication. Defaults to redirect.
enum ApiConfigHandlerAuthFailAction {
  authFailActionUnspecified("AUTH_FAIL_ACTION_UNSPECIFIED"),
  authFailActionRedirect("AUTH_FAIL_ACTION_REDIRECT"),
  authFailActionUnauthorized("AUTH_FAIL_ACTION_UNAUTHORIZED");

  const ApiConfigHandlerAuthFailAction(this.wireValue);
  final String wireValue;

  static ApiConfigHandlerAuthFailAction fromValue(String value) {
    for (final item in ApiConfigHandlerAuthFailAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiConfigHandlerAuthFailAction value: $value');
  }
}
