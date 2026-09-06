import 'package:pulumi/pulumi.dart' as pulumi;

enum AutomationRulePropertyArrayChangedConditionSupportedChangeType implements pulumi.PulumiEnum<String> {
  valueAdded("Added");

  const AutomationRulePropertyArrayChangedConditionSupportedChangeType(this.wireValue);
  @override
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
