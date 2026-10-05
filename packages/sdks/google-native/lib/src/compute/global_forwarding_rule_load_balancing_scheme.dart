import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
enum GlobalForwardingRuleLoadBalancingScheme implements pulumi.PulumiEnum<String> {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalid("INVALID");

  const GlobalForwardingRuleLoadBalancingScheme(this.wireValue);
  @override
  final String wireValue;

  static GlobalForwardingRuleLoadBalancingScheme fromValue(String value) {
    for (final item in GlobalForwardingRuleLoadBalancingScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRuleLoadBalancingScheme value: $value');
  }
}
