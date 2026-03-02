// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a load balancing rule.
class LoadBalancingRuleResponse {
  /// The port used for internal connections on the endpoint. Acceptable values are between 1 and 65535.
  final pulumi.Input<int> backendPort;
  /// The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values are between 1 and 65534.
  final pulumi.Input<int> frontendPort;
  /// The load distribution policy for this rule.
  final pulumi.Input<String>? loadDistribution;
  /// The prob port used by the load balancing rule. Acceptable values are between 1 and 65535.
  final pulumi.Input<int>? probePort;
  /// the reference to the load balancer probe used by the load balancing rule.
  final pulumi.Input<String> probeProtocol;
  /// The probe request path. Only supported for HTTP/HTTPS probes.
  final pulumi.Input<String>? probeRequestPath;
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
  LoadBalancingRuleResponse({
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
      backendPort: (map['backendPort'] as int).input(),
      frontendPort: (map['frontendPort'] as int).input(),
      loadDistribution: map['loadDistribution'] == null ? null : (map['loadDistribution']! as String).input(),
      probePort: map['probePort'] == null ? null : (map['probePort']! as int).input(),
      probeProtocol: (map['probeProtocol'] as String).input(),
      probeRequestPath: map['probeRequestPath'] == null ? null : (map['probeRequestPath']! as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

