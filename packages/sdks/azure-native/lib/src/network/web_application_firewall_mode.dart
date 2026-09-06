import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode of the policy.
enum WebApplicationFirewallMode implements pulumi.PulumiEnum<String> {
  valuePrevention("Prevention"),
  valueDetection("Detection");

  const WebApplicationFirewallMode(this.wireValue);
  @override
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
