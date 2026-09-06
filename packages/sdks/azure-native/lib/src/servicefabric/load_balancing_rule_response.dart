// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a load balancing rule.
class LoadBalancingRuleResponse {
  /// The port used for internal connections on the endpoint. Acceptable values are between 1 and 65535.
  final pulumi.Input<int> backendPort;
  /// The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values are between 1 and 65534.
  final pulumi.Input<int> frontendPort;
  /// The load distribution policy for this rule.
  final pulumi.Input<String?>? loadDistribution;
  /// The prob port used by the load balancing rule. Acceptable values are between 1 and 65535.
  final pulumi.Input<int?>? probePort;
  /// the reference to the load balancer probe used by the load balancing rule.
  final pulumi.Input<String> probeProtocol;
  /// The probe request path. Only supported for HTTP/HTTPS probes.
  final pulumi.Input<String?>? probeRequestPath;
  /// The reference to the transport protocol used by the load balancing rule.
  final pulumi.Input<String> protocol;

  /// Creates a new [LoadBalancingRuleResponse].
  /// [backendPort] The port used for internal connections on the endpoint. Acceptable values are between 1 and 65535.
  /// [frontendPort] The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values are between 1 and 65534.
  /// [loadDistribution] The load distribution policy for this rule.
  /// [probePort] The prob port used by the load balancing rule. Acceptable values are between 1 and 65535.
  /// [probeProtocol] the reference to the load balancer probe used by the load balancing rule.
  /// [probeRequestPath] The probe request path. Only supported for HTTP/HTTPS probes.
  /// [protocol] The reference to the transport protocol used by the load balancing rule.
  const LoadBalancingRuleResponse({
    required this.backendPort,
    required this.frontendPort,
    this.loadDistribution,
    this.probePort,
    required this.probeProtocol,
    this.probeRequestPath,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'frontendPort': frontendPort,
      'loadDistribution': ?loadDistribution,
      'probePort': ?probePort,
      'probeProtocol': probeProtocol,
      'probeRequestPath': ?probeRequestPath,
      'protocol': protocol,
    };
  }

  factory LoadBalancingRuleResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancingRuleResponse(
      backendPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['backendPort'])),
      frontendPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['frontendPort'])),
      loadDistribution: (() { final guardedValue = map['loadDistribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      probePort: (() { final guardedValue = map['probePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      probeProtocol: pulumi.Input.fromValue(map['probeProtocol'] as String),
      probeRequestPath: (() { final guardedValue = map['probeRequestPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
