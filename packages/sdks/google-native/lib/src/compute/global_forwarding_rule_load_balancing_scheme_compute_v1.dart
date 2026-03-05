/// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
enum GlobalForwardingRuleLoadBalancingSchemeComputeV1 {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalid("INVALID");

  const GlobalForwardingRuleLoadBalancingSchemeComputeV1(this.wireValue);
  final String wireValue;

  static GlobalForwardingRuleLoadBalancingSchemeComputeV1 fromValue(String value) {
    for (final item in GlobalForwardingRuleLoadBalancingSchemeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRuleLoadBalancingSchemeComputeV1 value: $value');
  }
}

