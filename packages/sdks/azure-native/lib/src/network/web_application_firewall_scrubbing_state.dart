import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the log scrubbing config. Default value is Enabled.
enum WebApplicationFirewallScrubbingState implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const WebApplicationFirewallScrubbingState(this.wireValue);
  @override
  final String wireValue;

  static WebApplicationFirewallScrubbingState fromValue(String value) {
    for (final item in WebApplicationFirewallScrubbingState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallScrubbingState value: $value');
  }
}
