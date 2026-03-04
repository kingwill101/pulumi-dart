/// The mode of the policy.
enum WebApplicationFirewallMode {
  valuePrevention("Prevention"),
  valueDetection("Detection");

  const WebApplicationFirewallMode(this.wireValue);
  final String wireValue;

  static WebApplicationFirewallMode fromValue(String value) {
    for (final item in WebApplicationFirewallMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallMode value: $value');
  }
}
