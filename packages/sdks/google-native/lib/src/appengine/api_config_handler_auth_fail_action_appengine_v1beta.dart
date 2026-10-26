import 'package:pulumi/pulumi.dart' as pulumi;

/// Action to take when users access resources that require authentication. Defaults to redirect.
enum ApiConfigHandlerAuthFailActionAppengineV1beta implements pulumi.PulumiEnum<String> {
  authFailActionUnspecified("AUTH_FAIL_ACTION_UNSPECIFIED"),
  authFailActionRedirect("AUTH_FAIL_ACTION_REDIRECT"),
  authFailActionUnauthorized("AUTH_FAIL_ACTION_UNAUTHORIZED");

  const ApiConfigHandlerAuthFailActionAppengineV1beta(this.wireValue);
  @override
  final String wireValue;

  static ApiConfigHandlerAuthFailActionAppengineV1beta fromValue(String value) {
    for (final item in ApiConfigHandlerAuthFailActionAppengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiConfigHandlerAuthFailActionAppengineV1beta value: $value');
  }
}
