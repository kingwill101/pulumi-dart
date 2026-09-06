import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope for this rule. The scope and filter determine which clients match the rule.
enum NfsAccessRuleScope implements pulumi.PulumiEnum<String> {
  valueDefault("default"),
  valueNetwork("network"),
  valueHost("host");

  const NfsAccessRuleScope(this.wireValue);
  @override
  final String wireValue;

  static NfsAccessRuleScope fromValue(String value) {
    for (final item in NfsAccessRuleScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsAccessRuleScope value: $value');
  }
}
