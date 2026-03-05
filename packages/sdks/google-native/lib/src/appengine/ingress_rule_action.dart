/// The action to take on matched requests.
enum IngressRuleAction {
  unspecifiedAction("UNSPECIFIED_ACTION"),
  allow("ALLOW"),
  deny("DENY");

  const IngressRuleAction(this.wireValue);
  final String wireValue;

  static IngressRuleAction fromValue(String value) {
    for (final item in IngressRuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngressRuleAction value: $value');
  }
}

