/// This signifies the networking tier used for configuring this load balancer and can only take the following values: PREMIUM, STANDARD. For regional ForwardingRule, the valid values are PREMIUM and STANDARD. For GlobalForwardingRule, the valid value is PREMIUM. If this field is not specified, it is assumed to be PREMIUM. If IPAddress is specified, this value must be equal to the networkTier of the Address.
enum GlobalForwardingRuleNetworkTierComputeBeta {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const GlobalForwardingRuleNetworkTierComputeBeta(this.wireValue);
  final String wireValue;

  static GlobalForwardingRuleNetworkTierComputeBeta fromValue(String value) {
    for (final item in GlobalForwardingRuleNetworkTierComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GlobalForwardingRuleNetworkTierComputeBeta value: $value',
    );
  }
}
