/// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
enum GlobalForwardingRuleLoadBalancingScheme {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalid("INVALID");

  const GlobalForwardingRuleLoadBalancingScheme(this.value);
  final String value;

  static GlobalForwardingRuleLoadBalancingScheme fromValue(String value) {
    for (final item in GlobalForwardingRuleLoadBalancingScheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRuleLoadBalancingScheme value: $value');
  }
}

