/// Network protocol this rule applies to.
enum SecurityConfigurationRuleProtocol {
  valueTcp("Tcp"),
  valueUdp("Udp"),
  valueIcmp("Icmp"),
  valueEsp("Esp"),
  valueAny("Any"),
  valueAh("Ah");

  const SecurityConfigurationRuleProtocol(this.value);
  final String value;

  static SecurityConfigurationRuleProtocol fromValue(String value) {
    for (final item in SecurityConfigurationRuleProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityConfigurationRuleProtocol value: $value');
  }
}

