/// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
enum ForwardingRuleLoadBalancingSchemeComputeBeta {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalid("INVALID");

  const ForwardingRuleLoadBalancingSchemeComputeBeta(this.wireValue);
  final String wireValue;

  static ForwardingRuleLoadBalancingSchemeComputeBeta fromValue(String value) {
    for (final item in ForwardingRuleLoadBalancingSchemeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleLoadBalancingSchemeComputeBeta value: $value');
  }
}

