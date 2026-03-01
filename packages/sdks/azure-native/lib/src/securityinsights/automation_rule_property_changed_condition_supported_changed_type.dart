enum AutomationRulePropertyChangedConditionSupportedChangedType {
  valueChangedFrom("ChangedFrom"),
  valueChangedTo("ChangedTo");

  const AutomationRulePropertyChangedConditionSupportedChangedType(this.value);
  final String value;

  static AutomationRulePropertyChangedConditionSupportedChangedType fromValue(String value) {
    for (final item in AutomationRulePropertyChangedConditionSupportedChangedType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyChangedConditionSupportedChangedType value: $value');
  }
}

