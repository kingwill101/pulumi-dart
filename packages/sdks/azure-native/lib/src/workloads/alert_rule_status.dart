import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the alert is in an enabled state.
enum AlertRuleStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const AlertRuleStatus(this.wireValue);
  @override
  final String wireValue;

  static AlertRuleStatus fromValue(String value) {
    for (final item in AlertRuleStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertRuleStatus value: $value');
  }
}
