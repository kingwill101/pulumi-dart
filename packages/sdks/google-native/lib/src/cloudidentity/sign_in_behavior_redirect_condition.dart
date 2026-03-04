/// When to redirect sign-ins to the IdP.
enum SignInBehaviorRedirectCondition {
  redirectConditionUnspecified("REDIRECT_CONDITION_UNSPECIFIED"),
  never_("NEVER");

  const SignInBehaviorRedirectCondition(this.wireValue);
  final String wireValue;

  static SignInBehaviorRedirectCondition fromValue(String value) {
    for (final item in SignInBehaviorRedirectCondition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SignInBehaviorRedirectCondition value: $value',
    );
  }
}
