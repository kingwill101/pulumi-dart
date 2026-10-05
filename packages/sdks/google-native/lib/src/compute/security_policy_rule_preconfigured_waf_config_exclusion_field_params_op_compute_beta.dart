import 'package:pulumi/pulumi.dart' as pulumi;

/// The match operator for the field.
enum SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeBeta implements pulumi.PulumiEnum<String> {
  contains("CONTAINS"),
  endsWith("ENDS_WITH"),
  equals("EQUALS"),
  equalsAny("EQUALS_ANY"),
  startsWith("STARTS_WITH");

  const SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeBeta fromValue(String value) {
    for (final item in SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeBeta value: $value');
  }
}
