/// The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
enum SecurityRuleDirection {
  valueInbound("Inbound"),
  valueOutbound("Outbound");

  const SecurityRuleDirection(this.wireValue);
  final String wireValue;

  static SecurityRuleDirection fromValue(String value) {
    for (final item in SecurityRuleDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityRuleDirection value: $value');
  }
}
