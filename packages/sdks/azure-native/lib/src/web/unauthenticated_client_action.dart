/// The action to take when an unauthenticated client attempts to access the app.
enum UnauthenticatedClientAction {
  valueRedirectToLoginPage("RedirectToLoginPage"),
  valueAllowAnonymous("AllowAnonymous");

  const UnauthenticatedClientAction(this.wireValue);
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

