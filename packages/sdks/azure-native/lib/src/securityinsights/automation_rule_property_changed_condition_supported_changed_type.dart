enum AutomationRulePropertyChangedConditionSupportedChangedType {
  valueChangedFrom("ChangedFrom"),
  valueChangedTo("ChangedTo");

  const AutomationRulePropertyChangedConditionSupportedChangedType(this.wireValue);
  final String wireValue;

  static AutomationRulePropertyChangedConditionSupportedChangedType fromValue(String value) {
    for (final item in AutomationRulePropertyChangedConditionSupportedChangedType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyChangedConditionSupportedChangedType value: $value');
  }
}

