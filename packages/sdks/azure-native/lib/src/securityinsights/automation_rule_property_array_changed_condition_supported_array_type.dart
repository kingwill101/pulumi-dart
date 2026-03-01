enum AutomationRulePropertyArrayChangedConditionSupportedArrayType {
  valueAlerts("Alerts"),
  valueLabels("Labels"),
  valueTactics("Tactics"),
  valueComments("Comments");

  const AutomationRulePropertyArrayChangedConditionSupportedArrayType(this.value);
  final String value;

  static AutomationRulePropertyArrayChangedConditionSupportedArrayType fromValue(String value) {
    for (final item in AutomationRulePropertyArrayChangedConditionSupportedArrayType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyArrayChangedConditionSupportedArrayType value: $value');
  }
}

