import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the redirect action.
enum SecurityPolicyRuleRedirectOptionsTypeComputeBeta implements pulumi.PulumiEnum<String> {
  external302("EXTERNAL_302"),
  googleRecaptcha("GOOGLE_RECAPTCHA");

  const SecurityPolicyRuleRedirectOptionsTypeComputeBeta(this.wireValue);
  @override
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
