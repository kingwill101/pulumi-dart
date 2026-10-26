import 'package:pulumi/pulumi.dart' as pulumi;

/// The network firewall policy enforcement order. Can be either AFTER_CLASSIC_FIREWALL or BEFORE_CLASSIC_FIREWALL. Defaults to AFTER_CLASSIC_FIREWALL if the field is not specified.
enum NetworkNetworkFirewallPolicyEnforcementOrderComputeBeta implements pulumi.PulumiEnum<String> {
  afterClassicFirewall("AFTER_CLASSIC_FIREWALL"),
  beforeClassicFirewall("BEFORE_CLASSIC_FIREWALL");

  const NetworkNetworkFirewallPolicyEnforcementOrderComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static NetworkNetworkFirewallPolicyEnforcementOrderComputeBeta fromValue(String value) {
    for (final item in NetworkNetworkFirewallPolicyEnforcementOrderComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkNetworkFirewallPolicyEnforcementOrderComputeBeta value: $value');
  }
}
