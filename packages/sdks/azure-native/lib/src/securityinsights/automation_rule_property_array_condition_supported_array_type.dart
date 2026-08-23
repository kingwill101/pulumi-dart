/// Describes an array condition evaluated array type.
enum AutomationRulePropertyArrayConditionSupportedArrayType {
  valueCustomDetails("CustomDetails"),
  valueCustomDetailValues("CustomDetailValues");

  const AutomationRulePropertyArrayConditionSupportedArrayType(this.wireValue);
  final String wireValue;

  static AutomationRulePropertyArrayConditionSupportedArrayType fromValue(String value) {
    for (final item in AutomationRulePropertyArrayConditionSupportedArrayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyArrayConditionSupportedArrayType value: $value');
  }
}
