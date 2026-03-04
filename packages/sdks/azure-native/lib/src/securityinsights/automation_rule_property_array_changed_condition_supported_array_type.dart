enum AutomationRulePropertyArrayChangedConditionSupportedArrayType {
  valueAlerts("Alerts"),
  valueLabels("Labels"),
  valueTactics("Tactics"),
  valueComments("Comments");

  const AutomationRulePropertyArrayChangedConditionSupportedArrayType(
    this.wireValue,
  );
  final String wireValue;

  static AutomationRulePropertyArrayChangedConditionSupportedArrayType
  fromValue(String value) {
    for (final item
        in AutomationRulePropertyArrayChangedConditionSupportedArrayType
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AutomationRulePropertyArrayChangedConditionSupportedArrayType value: $value',
    );
  }
}
