import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the redirect action.
enum SecurityPolicyRuleRedirectOptionsTypeComputeV1 implements pulumi.PulumiEnum<String> {
  external302("EXTERNAL_302"),
  googleRecaptcha("GOOGLE_RECAPTCHA");

  const SecurityPolicyRuleRedirectOptionsTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyRuleRedirectOptionsTypeComputeV1 fromValue(String value) {
    for (final item in SecurityPolicyRuleRedirectOptionsTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRuleRedirectOptionsTypeComputeV1 value: $value');
  }
}
