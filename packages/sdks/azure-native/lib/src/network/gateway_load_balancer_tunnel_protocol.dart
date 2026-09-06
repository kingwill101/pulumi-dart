import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol of gateway load balancer tunnel interface.
enum GatewayLoadBalancerTunnelProtocol implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueNative("Native"),
  valueVXLAN("VXLAN");

  const GatewayLoadBalancerTunnelProtocol(this.wireValue);
  @override
  final String wireValue;

  static GatewayLoadBalancerTunnelProtocol fromValue(String value) {
    for (final item in GatewayLoadBalancerTunnelProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayLoadBalancerTunnelProtocol value: $value');
  }
}
