/// Protocol of gateway load balancer tunnel interface.
enum GatewayLoadBalancerTunnelProtocol {
  valueNone("None"),
  valueNative("Native"),
  valueVXLAN("VXLAN");

  const GatewayLoadBalancerTunnelProtocol(this.wireValue);
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
