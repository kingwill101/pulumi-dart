/// When to redirect sign-ins to the IdP.
enum SignInBehaviorRedirectConditionCloudidentityV1beta1 {
  redirectConditionUnspecified("REDIRECT_CONDITION_UNSPECIFIED"),
  never_("NEVER");

  const SignInBehaviorRedirectConditionCloudidentityV1beta1(this.wireValue);
  final String wireValue;

  static SignInBehaviorRedirectConditionCloudidentityV1beta1 fromValue(
    String value,
  ) {
    for (final item
        in SignInBehaviorRedirectConditionCloudidentityV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SignInBehaviorRedirectConditionCloudidentityV1beta1 value: $value',
    );
  }
}
