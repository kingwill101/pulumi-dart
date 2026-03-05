/// The match operator for the field.
enum SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1 {
  contains("CONTAINS"),
  endsWith("ENDS_WITH"),
  equals("EQUALS"),
  equalsAny("EQUALS_ANY"),
  startsWith("STARTS_WITH");

  const SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1(this.wireValue);
  final String wireValue;

  static SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1 fromValue(String value) {
    for (final item in SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1 value: $value');
  }
}

