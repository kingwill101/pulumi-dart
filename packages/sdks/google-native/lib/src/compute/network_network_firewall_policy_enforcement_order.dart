import 'package:pulumi/pulumi.dart' as pulumi;

/// The network firewall policy enforcement order. Can be either AFTER_CLASSIC_FIREWALL or BEFORE_CLASSIC_FIREWALL. Defaults to AFTER_CLASSIC_FIREWALL if the field is not specified.
enum NetworkNetworkFirewallPolicyEnforcementOrder implements pulumi.PulumiEnum<String> {
  afterClassicFirewall("AFTER_CLASSIC_FIREWALL"),
  beforeClassicFirewall("BEFORE_CLASSIC_FIREWALL");

  const NetworkNetworkFirewallPolicyEnforcementOrder(this.wireValue);
  @override
  final String wireValue;

  static NetworkNetworkFirewallPolicyEnforcementOrder fromValue(String value) {
    for (final item in NetworkNetworkFirewallPolicyEnforcementOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkNetworkFirewallPolicyEnforcementOrder value: $value');
  }
}
