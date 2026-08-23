/// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
enum GlobalForwardingRuleLoadBalancingSchemeComputeBeta {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalid("INVALID");

  const GlobalForwardingRuleLoadBalancingSchemeComputeBeta(this.wireValue);
  final String wireValue;

  static GlobalForwardingRuleLoadBalancingSchemeComputeBeta fromValue(String value) {
    for (final item in GlobalForwardingRuleLoadBalancingSchemeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRuleLoadBalancingSchemeComputeBeta value: $value');
  }
}
