import 'package:pulumi/pulumi.dart' as pulumi;

/// Access allowed by this rule.
enum NfsAccessRuleAccess implements pulumi.PulumiEnum<String> {
  valueNo("no"),
  valueRo("ro"),
  valueRw("rw");

  const NfsAccessRuleAccess(this.wireValue);
  @override
  final String wireValue;

  static NfsAccessRuleAccess fromValue(String value) {
    for (final item in NfsAccessRuleAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsAccessRuleAccess value: $value');
  }
}
