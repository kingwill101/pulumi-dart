/// Describes an array condition evaluation type.
enum AutomationRulePropertyArrayConditionSupportedArrayConditionType {
  valueAnyItem("AnyItem");

  const AutomationRulePropertyArrayConditionSupportedArrayConditionType(this.value);
  final String value;

  static AutomationRulePropertyArrayConditionSupportedArrayConditionType fromValue(String value) {
    for (final item in AutomationRulePropertyArrayConditionSupportedArrayConditionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyArrayConditionSupportedArrayConditionType value: $value');
  }
}

