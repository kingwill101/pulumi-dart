/// Action to take when users access resources that require authentication. Defaults to redirect.
enum ApiConfigHandlerAuthFailActionAppengineV1beta {
  authFailActionUnspecified("AUTH_FAIL_ACTION_UNSPECIFIED"),
  authFailActionRedirect("AUTH_FAIL_ACTION_REDIRECT"),
  authFailActionUnauthorized("AUTH_FAIL_ACTION_UNAUTHORIZED");

  const ApiConfigHandlerAuthFailActionAppengineV1beta(this.value);
  final String value;

  static ApiConfigHandlerAuthFailActionAppengineV1beta fromValue(String value) {
    for (final item in ApiConfigHandlerAuthFailActionAppengineV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiConfigHandlerAuthFailActionAppengineV1beta value: $value');
  }
}

