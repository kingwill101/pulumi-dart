// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides information about NAT configuration on the default public Load Balancer for the node type.
class NodeTypeNatConfig {
  /// The internal port for the NAT configuration.
  final pulumi.Input<int>? backendPort;

  /// The port range end for the external endpoint.
  final pulumi.Input<int>? frontendPortRangeEnd;

  /// The port range start for the external endpoint.
  final pulumi.Input<int>? frontendPortRangeStart;

  /// Creates a new [NodeTypeNatConfig].
  /// [backendPort] The internal port for the NAT configuration.
  /// [frontendPortRangeEnd] The port range end for the external endpoint.
  /// [frontendPortRangeStart] The port range start for the external endpoint.
  NodeTypeNatConfig({
    this.backendPort,
    this.frontendPortRangeEnd,
    this.frontendPortRangeStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': ?backendPort,
      'frontendPortRangeEnd': ?frontendPortRangeEnd,
      'frontendPortRangeStart': ?frontendPortRangeStart,
    };
  }

  factory NodeTypeNatConfig.fromMap(Map<String, dynamic> map) {
    return NodeTypeNatConfig(
      backendPort: (() {
        final guardedValue = map['backendPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      frontendPortRangeEnd: (() {
        final guardedValue = map['frontendPortRangeEnd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      frontendPortRangeStart: (() {
        final guardedValue = map['frontendPortRangeStart'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
