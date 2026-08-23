/// Indicates if the traffic matched against the rule in inbound or outbound.
enum SecurityConfigurationRuleDirection {
  valueInbound("Inbound"),
  valueOutbound("Outbound");

  const SecurityConfigurationRuleDirection(this.wireValue);
  final String wireValue;

  static SecurityConfigurationRuleDirection fromValue(String value) {
    for (final item in SecurityConfigurationRuleDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityConfigurationRuleDirection value: $value');
  }
}
