// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gateway load balancer tunnel interface of a load balancer backend address pool.
class GatewayLoadBalancerTunnelInterfaceResponse {
  /// Identifier of gateway load balancer tunnel interface.
  final pulumi.Input<int>? identifier;
  /// Port of gateway load balancer tunnel interface.
  final pulumi.Input<int>? port;
  /// Protocol of gateway load balancer tunnel interface.
  final pulumi.Input<String>? protocol;
  /// Traffic type of gateway load balancer tunnel interface.
  final pulumi.Input<String>? type;

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
      identifier: map['identifier'] == null ? null : (map['identifier']! as int).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

