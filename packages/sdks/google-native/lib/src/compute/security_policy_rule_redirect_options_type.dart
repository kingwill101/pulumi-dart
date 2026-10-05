import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the redirect action.
enum SecurityPolicyRuleRedirectOptionsType implements pulumi.PulumiEnum<String> {
  external302("EXTERNAL_302"),
  googleRecaptcha("GOOGLE_RECAPTCHA");

  const SecurityPolicyRuleRedirectOptionsType(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyRuleRedirectOptionsType fromValue(String value) {
    for (final item in SecurityPolicyRuleRedirectOptionsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRuleRedirectOptionsType value: $value');
  }
}
