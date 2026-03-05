/// Type of the redirect action.
enum SecurityPolicyRuleRedirectOptionsTypeComputeBeta {
  external302("EXTERNAL_302"),
  googleRecaptcha("GOOGLE_RECAPTCHA");

  const SecurityPolicyRuleRedirectOptionsTypeComputeBeta(this.wireValue);
  final String wireValue;

  static SecurityPolicyRuleRedirectOptionsTypeComputeBeta fromValue(String value) {
    for (final item in SecurityPolicyRuleRedirectOptionsTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRuleRedirectOptionsTypeComputeBeta value: $value');
  }
}

