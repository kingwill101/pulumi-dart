import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
enum WebApplicationFirewallState implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const WebApplicationFirewallState(this.wireValue);
  @override
  final String wireValue;

  static WebApplicationFirewallState fromValue(String value) {
    for (final item in WebApplicationFirewallState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallState value: $value');
  }
}
