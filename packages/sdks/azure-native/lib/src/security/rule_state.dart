import 'package:pulumi/pulumi.dart' as pulumi;

/// Possible states of the rule
enum RuleState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled"),
  expired("Expired");

  const RuleState(this.wireValue);
  @override
  final String wireValue;

  static RuleState fromValue(String value) {
    for (final item in RuleState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleState value: $value');
  }
}
