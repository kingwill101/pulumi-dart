/// State of the log scrubbing config. Default value is Enabled.
enum WebApplicationFirewallScrubbingState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const WebApplicationFirewallScrubbingState(this.value);
  final String value;

  static WebApplicationFirewallScrubbingState fromValue(String value) {
    for (final item in WebApplicationFirewallScrubbingState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallScrubbingState value: $value');
  }
}

