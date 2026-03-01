/// Describes a boolean condition operator.
enum AutomationRuleBooleanConditionSupportedOperator {
  valueAnd("And"),
  valueOr("Or");

  const AutomationRuleBooleanConditionSupportedOperator(this.value);
  final String value;

  static AutomationRuleBooleanConditionSupportedOperator fromValue(String value) {
    for (final item in AutomationRuleBooleanConditionSupportedOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRuleBooleanConditionSupportedOperator value: $value');
  }
}

