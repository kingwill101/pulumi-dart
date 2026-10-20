import 'package:pulumi/pulumi.dart' as pulumi;

/// The action that the external access rule performs.
enum ExternalAccessRuleAction implements pulumi.PulumiEnum<String> {
  actionUnspecified("ACTION_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const ExternalAccessRuleAction(this.wireValue);
  @override
  final String wireValue;

  static ExternalAccessRuleAction fromValue(String value) {
    for (final item in ExternalAccessRuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalAccessRuleAction value: $value');
  }
}
