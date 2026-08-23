enum AutomationRulePropertyArrayChangedConditionSupportedChangeType {
  valueAdded("Added");

  const AutomationRulePropertyArrayChangedConditionSupportedChangeType(this.wireValue);
  final String wireValue;

  static AutomationRulePropertyArrayChangedConditionSupportedChangeType fromValue(String value) {
    for (final item in AutomationRulePropertyArrayChangedConditionSupportedChangeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyArrayChangedConditionSupportedChangeType value: $value');
  }
}
