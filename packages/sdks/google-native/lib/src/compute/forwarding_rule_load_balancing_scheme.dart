import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
enum ForwardingRuleLoadBalancingScheme implements pulumi.PulumiEnum<String> {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalid("INVALID");

  const ForwardingRuleLoadBalancingScheme(this.wireValue);
  @override
  final String wireValue;

  static ForwardingRuleLoadBalancingScheme fromValue(String value) {
    for (final item in ForwardingRuleLoadBalancingScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleLoadBalancingScheme value: $value');
  }
}
