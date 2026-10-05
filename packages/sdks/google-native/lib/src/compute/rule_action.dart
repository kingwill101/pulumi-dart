import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum RuleAction implements pulumi.PulumiEnum<String> {
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG"),
  noAction("NO_ACTION");

  const RuleAction(this.wireValue);
  @override
  final String wireValue;

  static RuleAction fromValue(String value) {
    for (final item in RuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleAction value: $value');
  }
}
