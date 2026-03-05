/// The match operator for the field.
enum SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeBeta {
  contains("CONTAINS"),
  endsWith("ENDS_WITH"),
  equals("EQUALS"),
  equalsAny("EQUALS_ANY"),
  startsWith("STARTS_WITH");

  const SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeBeta(this.wireValue);
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

