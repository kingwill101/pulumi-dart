enum AutomationRulePropertyConditionSupportedOperator {
  valueEquals("Equals"),
  valueNotEquals("NotEquals"),
  valueContains("Contains"),
  valueNotContains("NotContains"),
  valueStartsWith("StartsWith"),
  valueNotStartsWith("NotStartsWith"),
  valueEndsWith("EndsWith"),
  valueNotEndsWith("NotEndsWith");

  const AutomationRulePropertyConditionSupportedOperator(this.wireValue);
  final String wireValue;

  static AutomationRulePropertyConditionSupportedOperator fromValue(String value) {
    for (final item in AutomationRulePropertyConditionSupportedOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyConditionSupportedOperator value: $value');
  }
}

