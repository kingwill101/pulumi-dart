/// The complexity of the password.
enum PasswordValidationPolicyComplexity {
  complexityUnspecified("COMPLEXITY_UNSPECIFIED"),
  complexityDefault("COMPLEXITY_DEFAULT");

  const PasswordValidationPolicyComplexity(this.wireValue);
  final String wireValue;

  static PasswordValidationPolicyComplexity fromValue(String value) {
    for (final item in PasswordValidationPolicyComplexity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PasswordValidationPolicyComplexity value: $value');
  }
}

