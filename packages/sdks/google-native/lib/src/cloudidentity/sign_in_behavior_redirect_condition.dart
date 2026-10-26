import 'package:pulumi/pulumi.dart' as pulumi;

/// When to redirect sign-ins to the IdP.
enum SignInBehaviorRedirectCondition implements pulumi.PulumiEnum<String> {
  redirectConditionUnspecified("REDIRECT_CONDITION_UNSPECIFIED"),
  never_("NEVER");

  const SignInBehaviorRedirectCondition(this.wireValue);
  @override
  final String wireValue;

  static SignInBehaviorRedirectCondition fromValue(String value) {
    for (final item in SignInBehaviorRedirectCondition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignInBehaviorRedirectCondition value: $value');
  }
}
