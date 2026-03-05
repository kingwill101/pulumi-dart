// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gateway load balancer tunnel interface of a load balancer backend address pool.
class GatewayLoadBalancerTunnelInterface {
  /// Identifier of gateway load balancer tunnel interface.
  final pulumi.Input<int>? identifier;
  /// Port of gateway load balancer tunnel interface.
  final pulumi.Input<int>? port;
  /// Protocol of gateway load balancer tunnel interface.
  final pulumi.Input<String>? protocol;
  /// Traffic type of gateway load balancer tunnel interface.
  final pulumi.Input<String>? type;

  /// Creates a new [GatewayLoadBalancerTunnelInterface].
  /// [identifier] Identifier of gateway load balancer tunnel interface.
  /// [port] Port of gateway load balancer tunnel interface.
  /// [protocol] Protocol of gateway load balancer tunnel interface.
  /// [type] Traffic type of gateway load balancer tunnel interface.
  GatewayLoadBalancerTunnelInterface({
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

  factory GatewayLoadBalancerTunnelInterface.fromMap(Map<String, dynamic> map) {
    return GatewayLoadBalancerTunnelInterface(
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

