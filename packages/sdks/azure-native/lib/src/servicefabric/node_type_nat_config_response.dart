// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides information about NAT configuration on the default public Load Balancer for the node type.
class NodeTypeNatConfigResponse {
  /// The internal port for the NAT configuration.
  final pulumi.Input<int?>? backendPort;
  /// The port range end for the external endpoint.
  final pulumi.Input<int?>? frontendPortRangeEnd;
  /// The port range start for the external endpoint.
  final pulumi.Input<int?>? frontendPortRangeStart;

  /// Creates a new [NodeTypeNatConfigResponse].
  /// [backendPort] The internal port for the NAT configuration.
  /// [frontendPortRangeEnd] The port range end for the external endpoint.
  /// [frontendPortRangeStart] The port range start for the external endpoint.
  const NodeTypeNatConfigResponse({
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

  factory NodeTypeNatConfigResponse.fromMap(Map<String, dynamic> map) {
    return NodeTypeNatConfigResponse(
      backendPort: (() { final guardedValue = map['backendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      frontendPortRangeEnd: (() { final guardedValue = map['frontendPortRangeEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      frontendPortRangeStart: (() { final guardedValue = map['frontendPortRangeStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
