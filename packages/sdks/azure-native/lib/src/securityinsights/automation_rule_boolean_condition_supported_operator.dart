import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a boolean condition operator.
enum AutomationRuleBooleanConditionSupportedOperator implements pulumi.PulumiEnum<String> {
  valueAnd("And"),
  valueOr("Or");

  const AutomationRuleBooleanConditionSupportedOperator(this.wireValue);
  @override
  final String wireValue;

  static AutomationRuleBooleanConditionSupportedOperator fromValue(String value) {
    for (final item in AutomationRuleBooleanConditionSupportedOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRuleBooleanConditionSupportedOperator value: $value');
  }
}
