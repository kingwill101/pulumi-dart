// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerForwardingRule {
  /// the id of the tls certificate used for ssl termination if enabled
  final pulumi.Input<String> certificateId;
  /// the name of the tls certificate used for ssl termination if enabled
  final pulumi.Input<String> certificateName;
  /// the port on which the load balancer instance will listen
  final pulumi.Input<int> entryPort;
  /// the protocol used for traffic to the load balancer
  final pulumi.Input<String> entryProtocol;
  /// the port on the backend Droplets to which the load balancer will send traffic
  final pulumi.Input<int> targetPort;
  /// the protocol used for traffic to the backend droplets
  final pulumi.Input<String> targetProtocol;
  /// whether ssl encrypted traffic will be passed through to the backend droplets
  final pulumi.Input<bool> tlsPassthrough;

  /// Creates a new [GetLoadBalancerForwardingRule].
  /// [certificateId] the id of the tls certificate used for ssl termination if enabled
  /// [certificateName] the name of the tls certificate used for ssl termination if enabled
  /// [entryPort] the port on which the load balancer instance will listen
  /// [entryProtocol] the protocol used for traffic to the load balancer
  /// [targetPort] the port on the backend Droplets to which the load balancer will send traffic
  /// [targetProtocol] the protocol used for traffic to the backend droplets
  /// [tlsPassthrough] whether ssl encrypted traffic will be passed through to the backend droplets
  const GetLoadBalancerForwardingRule({
    required this.certificateId,
    required this.certificateName,
    required this.entryPort,
    required this.entryProtocol,
    required this.targetPort,
    required this.targetProtocol,
    required this.tlsPassthrough,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'certificateName': certificateName,
      'entryPort': entryPort,
      'entryProtocol': entryProtocol,
      'targetPort': targetPort,
      'targetProtocol': targetProtocol,
      'tlsPassthrough': tlsPassthrough,
    };
  }

  factory GetLoadBalancerForwardingRule.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerForwardingRule(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      entryPort: pulumi.Input.fromValue(map['entryPort'] as int),
      entryProtocol: pulumi.Input.fromValue(map['entryProtocol'] as String),
      targetPort: pulumi.Input.fromValue(map['targetPort'] as int),
      targetProtocol: pulumi.Input.fromValue(map['targetProtocol'] as String),
      tlsPassthrough: pulumi.Input.fromValue(map['tlsPassthrough'] as bool),
    );
  }
}
