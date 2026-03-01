/// Scope for this rule. The scope and filter determine which clients match the rule.
enum NfsAccessRuleScope {
  valueDefault("default"),
  valueNetwork("network"),
  valueHost("host");

  const NfsAccessRuleScope(this.value);
  final String value;

  static NfsAccessRuleScope fromValue(String value) {
    for (final item in NfsAccessRuleScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsAccessRuleScope value: $value');
  }
}

