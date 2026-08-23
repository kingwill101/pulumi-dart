/// The match operator for the field.
enum SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp {
  contains("CONTAINS"),
  endsWith("ENDS_WITH"),
  equals("EQUALS"),
  equalsAny("EQUALS_ANY"),
  startsWith("STARTS_WITH");

  const SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp(this.wireValue);
  final String wireValue;

  static SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp fromValue(String value) {
    for (final item in SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp value: $value');
  }
}
