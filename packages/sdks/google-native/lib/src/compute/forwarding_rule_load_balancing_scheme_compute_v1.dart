/// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
enum ForwardingRuleLoadBalancingSchemeComputeV1 {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalid("INVALID");

  const ForwardingRuleLoadBalancingSchemeComputeV1(this.wireValue);
  final String wireValue;

  static ForwardingRuleLoadBalancingSchemeComputeV1 fromValue(String value) {
    for (final item in ForwardingRuleLoadBalancingSchemeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleLoadBalancingSchemeComputeV1 value: $value');
  }
}
