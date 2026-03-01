/// Describes an array condition evaluated array type.
enum AutomationRulePropertyArrayConditionSupportedArrayType {
  valueCustomDetails("CustomDetails"),
  valueCustomDetailValues("CustomDetailValues");

  const AutomationRulePropertyArrayConditionSupportedArrayType(this.value);
  final String value;

  static AutomationRulePropertyArrayConditionSupportedArrayType fromValue(String value) {
    for (final item in AutomationRulePropertyArrayConditionSupportedArrayType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyArrayConditionSupportedArrayType value: $value');
  }
}

