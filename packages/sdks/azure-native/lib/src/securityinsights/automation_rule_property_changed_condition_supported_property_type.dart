import 'package:pulumi/pulumi.dart' as pulumi;

enum AutomationRulePropertyChangedConditionSupportedPropertyType implements pulumi.PulumiEnum<String> {
  valueIncidentSeverity("IncidentSeverity"),
  valueIncidentStatus("IncidentStatus"),
  valueIncidentOwner("IncidentOwner");

  const AutomationRulePropertyChangedConditionSupportedPropertyType(this.wireValue);
  @override
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
