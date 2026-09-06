import 'package:pulumi/pulumi.dart' as pulumi;

enum AutomationRulePropertyChangedConditionSupportedChangedType implements pulumi.PulumiEnum<String> {
  valueChangedFrom("ChangedFrom"),
  valueChangedTo("ChangedTo");

  const AutomationRulePropertyChangedConditionSupportedChangedType(this.wireValue);
  @override
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
