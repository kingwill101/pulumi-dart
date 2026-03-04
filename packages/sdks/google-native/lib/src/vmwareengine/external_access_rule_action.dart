/// The action that the external access rule performs.
enum ExternalAccessRuleAction {
  actionUnspecified("ACTION_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const ExternalAccessRuleAction(this.wireValue);
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
