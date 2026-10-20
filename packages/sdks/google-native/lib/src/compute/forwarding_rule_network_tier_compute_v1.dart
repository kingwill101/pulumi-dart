import 'package:pulumi/pulumi.dart' as pulumi;

/// This signifies the networking tier used for configuring this load balancer and can only take the following values: PREMIUM, STANDARD. For regional ForwardingRule, the valid values are PREMIUM and STANDARD. For GlobalForwardingRule, the valid value is PREMIUM. If this field is not specified, it is assumed to be PREMIUM. If IPAddress is specified, this value must be equal to the networkTier of the Address.
enum ForwardingRuleNetworkTierComputeV1 implements pulumi.PulumiEnum<String> {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const ForwardingRuleNetworkTierComputeV1(this.wireValue);
  @override
  final String wireValue;

  static ForwardingRuleNetworkTierComputeV1 fromValue(String value) {
    for (final item in ForwardingRuleNetworkTierComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleNetworkTierComputeV1 value: $value');
  }
}
