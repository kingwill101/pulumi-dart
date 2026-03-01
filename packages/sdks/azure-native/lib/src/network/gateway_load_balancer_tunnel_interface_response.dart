// ignore_for_file: unused_element, unnecessary_cast


/// Gateway load balancer tunnel interface of a load balancer backend address pool.
class GatewayLoadBalancerTunnelInterfaceResponse {
  /// Identifier of gateway load balancer tunnel interface.
  final int? identifier;
  /// Port of gateway load balancer tunnel interface.
  final int? port;
  /// Protocol of gateway load balancer tunnel interface.
  final String? protocol;
  /// Traffic type of gateway load balancer tunnel interface.
  final String? type;

  /// Creates a new [GatewayLoadBalancerTunnelInterfaceResponse].
  /// [identifier] Identifier of gateway load balancer tunnel interface.
  /// [port] Port of gateway load balancer tunnel interface.
  /// [protocol] Protocol of gateway load balancer tunnel interface.
  /// [type] Traffic type of gateway load balancer tunnel interface.
  GatewayLoadBalancerTunnelInterfaceResponse({
    this.identifier,
    this.port,
    this.protocol,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': ?identifier,
      'port': ?port,
      'protocol': ?protocol,
      'type': ?type,
    };
  }

  factory GatewayLoadBalancerTunnelInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return GatewayLoadBalancerTunnelInterfaceResponse(
      identifier: map['identifier'] == null ? null : map['identifier'] as int,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

