import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the state of log scrubbing rule. Default value is Enabled.
enum ScrubbingRuleEntryState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ScrubbingRuleEntryState(this.wireValue);
  @override
  final String wireValue;

  static ScrubbingRuleEntryState fromValue(String value) {
    for (final item in ScrubbingRuleEntryState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScrubbingRuleEntryState value: $value');
  }
}
