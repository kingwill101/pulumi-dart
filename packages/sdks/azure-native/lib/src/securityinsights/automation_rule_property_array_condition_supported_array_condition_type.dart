import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an array condition evaluation type.
enum AutomationRulePropertyArrayConditionSupportedArrayConditionType implements pulumi.PulumiEnum<String> {
  valueAnyItem("AnyItem");

  const AutomationRulePropertyArrayConditionSupportedArrayConditionType(this.wireValue);
  @override
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
