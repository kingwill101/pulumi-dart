/// The state of the policy.
enum WebApplicationFirewallEnabledState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const WebApplicationFirewallEnabledState(this.wireValue);
  final String wireValue;

  static WebApplicationFirewallEnabledState fromValue(String value) {
    for (final item in WebApplicationFirewallEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallEnabledState value: $value');
  }
}

