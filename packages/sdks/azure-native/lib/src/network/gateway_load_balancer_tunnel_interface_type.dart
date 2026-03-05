/// Traffic type of gateway load balancer tunnel interface.
enum GatewayLoadBalancerTunnelInterfaceType {
  valueNone("None"),
  valueInternal("Internal"),
  valueExternal("External");

  const GatewayLoadBalancerTunnelInterfaceType(this.wireValue);
  final String wireValue;

  static GatewayLoadBalancerTunnelInterfaceType fromValue(String value) {
    for (final item in GatewayLoadBalancerTunnelInterfaceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayLoadBalancerTunnelInterfaceType value: $value');
  }
}

