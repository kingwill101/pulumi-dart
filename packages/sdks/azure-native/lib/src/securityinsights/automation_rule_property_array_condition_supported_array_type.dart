import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an array condition evaluated array type.
enum AutomationRulePropertyArrayConditionSupportedArrayType implements pulumi.PulumiEnum<String> {
  valueCustomDetails("CustomDetails"),
  valueCustomDetailValues("CustomDetailValues");

  const AutomationRulePropertyArrayConditionSupportedArrayType(this.wireValue);
  @override
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
