enum AutomationRulePropertyChangedConditionSupportedPropertyType {
  valueIncidentSeverity("IncidentSeverity"),
  valueIncidentStatus("IncidentStatus"),
  valueIncidentOwner("IncidentOwner");

  const AutomationRulePropertyChangedConditionSupportedPropertyType(this.wireValue);
  final String wireValue;

  static AutomationRulePropertyChangedConditionSupportedPropertyType fromValue(String value) {
    for (final item in AutomationRulePropertyChangedConditionSupportedPropertyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyChangedConditionSupportedPropertyType value: $value');
  }
}
