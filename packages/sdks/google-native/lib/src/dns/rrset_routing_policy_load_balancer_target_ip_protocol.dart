import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol of the load balancer to health check.
enum RRSetRoutingPolicyLoadBalancerTargetIpProtocol implements pulumi.PulumiEnum<String> {
  undefined("undefined"),
  tcp("tcp"),
  udp("udp");

  const RRSetRoutingPolicyLoadBalancerTargetIpProtocol(this.wireValue);
  @override
  final String wireValue;

  static RRSetRoutingPolicyLoadBalancerTargetIpProtocol fromValue(String value) {
    for (final item in RRSetRoutingPolicyLoadBalancerTargetIpProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RRSetRoutingPolicyLoadBalancerTargetIpProtocol value: $value');
  }
}
