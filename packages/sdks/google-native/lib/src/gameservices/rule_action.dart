import 'package:pulumi/pulumi.dart' as pulumi;

/// Required
enum RuleAction implements pulumi.PulumiEnum<String> {
  noAction("NO_ACTION"),
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG");

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
