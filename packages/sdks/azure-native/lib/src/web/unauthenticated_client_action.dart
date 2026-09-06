import 'package:pulumi/pulumi.dart' as pulumi;

/// The action to take when an unauthenticated client attempts to access the app.
enum UnauthenticatedClientAction implements pulumi.PulumiEnum<String> {
  valueRedirectToLoginPage("RedirectToLoginPage"),
  valueAllowAnonymous("AllowAnonymous");

  const UnauthenticatedClientAction(this.wireValue);
  @override
  final String wireValue;

  static UnauthenticatedClientAction fromValue(String value) {
    for (final item in UnauthenticatedClientAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnauthenticatedClientAction value: $value');
  }
}
