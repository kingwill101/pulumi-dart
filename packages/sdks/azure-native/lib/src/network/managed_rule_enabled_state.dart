import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the managed rule. Defaults to Disabled if not specified.
enum ManagedRuleEnabledState implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ManagedRuleEnabledState(this.wireValue);
  @override
  final String wireValue;

  static ManagedRuleEnabledState fromValue(String value) {
    for (final item in ManagedRuleEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleEnabledState value: $value');
  }
}
