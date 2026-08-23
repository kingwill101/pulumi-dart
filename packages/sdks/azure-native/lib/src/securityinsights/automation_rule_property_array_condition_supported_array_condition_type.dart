/// Describes an array condition evaluation type.
enum AutomationRulePropertyArrayConditionSupportedArrayConditionType {
  valueAnyItem("AnyItem");

  const AutomationRulePropertyArrayConditionSupportedArrayConditionType(this.wireValue);
  final String wireValue;

  static AutomationRulePropertyArrayConditionSupportedArrayConditionType fromValue(String value) {
    for (final item in AutomationRulePropertyArrayConditionSupportedArrayConditionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyArrayConditionSupportedArrayConditionType value: $value');
  }
}
