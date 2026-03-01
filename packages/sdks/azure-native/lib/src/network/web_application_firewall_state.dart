/// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
enum WebApplicationFirewallState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const WebApplicationFirewallState(this.value);
  final String value;

  static WebApplicationFirewallState fromValue(String value) {
    for (final item in WebApplicationFirewallState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallState value: $value');
  }
}

