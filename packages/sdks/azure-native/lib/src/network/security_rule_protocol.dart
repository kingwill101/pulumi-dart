/// Network protocol this rule applies to.
enum SecurityRuleProtocol {
  valueTcp("Tcp"),
  valueUdp("Udp"),
  valueIcmp("Icmp"),
  valueEsp("Esp"),
  value("*"),
  valueAh("Ah");

  const SecurityRuleProtocol(this.wireValue);
  final String wireValue;

  static SecurityRuleProtocol fromValue(String value) {
    for (final item in SecurityRuleProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityRuleProtocol value: $value');
  }
}

