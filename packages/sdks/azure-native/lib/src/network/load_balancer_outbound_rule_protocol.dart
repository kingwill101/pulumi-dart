import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol for the outbound rule in load balancer.
enum LoadBalancerOutboundRuleProtocol implements pulumi.PulumiEnum<String> {
  valueTcp("Tcp"),
  valueUdp("Udp"),
  valueAll("All");

  const LoadBalancerOutboundRuleProtocol(this.wireValue);
  @override
  final String wireValue;

  static LoadBalancerOutboundRuleProtocol fromValue(String value) {
    for (final item in LoadBalancerOutboundRuleProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerOutboundRuleProtocol value: $value');
  }
}
