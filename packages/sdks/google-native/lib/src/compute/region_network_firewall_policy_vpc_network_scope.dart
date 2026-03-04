/// The scope of networks allowed to be associated with the firewall policy. This field can be either GLOBAL_VPC_NETWORK or REGIONAL_VPC_NETWORK. A firewall policy with the VPC scope set to GLOBAL_VPC_NETWORK is allowed to be attached only to global networks. When the VPC scope is set to REGIONAL_VPC_NETWORK the firewall policy is allowed to be attached only to regional networks in the same scope as the firewall policy. Note: if not specified then GLOBAL_VPC_NETWORK will be used.
enum RegionNetworkFirewallPolicyVpcNetworkScope {
  globalVpcNetwork("GLOBAL_VPC_NETWORK"),
  regionalVpcNetwork("REGIONAL_VPC_NETWORK");

  const RegionNetworkFirewallPolicyVpcNetworkScope(this.wireValue);
  final String wireValue;

  static RegionNetworkFirewallPolicyVpcNetworkScope fromValue(String value) {
    for (final item in RegionNetworkFirewallPolicyVpcNetworkScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionNetworkFirewallPolicyVpcNetworkScope value: $value',
    );
  }
}
