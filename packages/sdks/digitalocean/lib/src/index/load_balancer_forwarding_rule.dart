// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerForwardingRule {
  /// **Deprecated** The ID of the TLS certificate to be used for SSL termination. Use `certificate_name` instead.
  final pulumi.Input<String>? certificateId;
  /// The unique name of the TLS certificate to be used for SSL termination.
  final pulumi.Input<String>? certificateName;
  /// An integer representing the port on which the Load Balancer instance will listen.
  final pulumi.Input<int> entryPort;
  /// The protocol used for traffic to the Load Balancer. The possible values are: `http`, `https`, `http2`, `http3`, `tcp`, or `udp`.
  final pulumi.Input<String> entryProtocol;
  /// An integer representing the port on the backend Droplets to which the Load Balancer will send traffic.
  final pulumi.Input<int> targetPort;
  /// The protocol used for traffic from the Load Balancer to the backend Droplets. The possible values are: `http`, `https`, `http2`, `tcp`, or `udp`.
  final pulumi.Input<String> targetProtocol;
  /// A boolean value indicating whether SSL encrypted traffic will be passed through to the backend Droplets. The default value is `false`.
  final pulumi.Input<bool>? tlsPassthrough;

  /// Creates a new [LoadBalancerForwardingRule].
  /// [certificateId] **Deprecated** The ID of the TLS certificate to be used for SSL termination. Use `certificate_name` instead.
  /// [certificateName] The unique name of the TLS certificate to be used for SSL termination.
  /// [entryPort] An integer representing the port on which the Load Balancer instance will listen.
  /// [entryProtocol] The protocol used for traffic to the Load Balancer. The possible values are: `http`, `https`, `http2`, `http3`, `tcp`, or `udp`.
  /// [targetPort] An integer representing the port on the backend Droplets to which the Load Balancer will send traffic.
  /// [targetProtocol] The protocol used for traffic from the Load Balancer to the backend Droplets. The possible values are: `http`, `https`, `http2`, `tcp`, or `udp`.
  /// [tlsPassthrough] A boolean value indicating whether SSL encrypted traffic will be passed through to the backend Droplets. The default value is `false`.
  LoadBalancerForwardingRule({
    this.certificateId,
    this.certificateName,
    required this.entryPort,
    required this.entryProtocol,
    required this.targetPort,
    required this.targetProtocol,
    this.tlsPassthrough,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'certificateName': ?certificateName,
      'entryPort': entryPort,
      'entryProtocol': entryProtocol,
      'targetPort': targetPort,
      'targetProtocol': targetProtocol,
      'tlsPassthrough': ?tlsPassthrough,
    };
  }

  factory LoadBalancerForwardingRule.fromMap(Map<String, dynamic> map) {
    return LoadBalancerForwardingRule(
      certificateId: map['certificateId'] == null ? null : (map['certificateId']! as String).input(),
      certificateName: map['certificateName'] == null ? null : (map['certificateName']! as String).input(),
      entryPort: (map['entryPort'] as int).input(),
      entryProtocol: (map['entryProtocol'] as String).input(),
      targetPort: (map['targetPort'] as int).input(),
      targetProtocol: (map['targetProtocol'] as String).input(),
      tlsPassthrough: map['tlsPassthrough'] == null ? null : (map['tlsPassthrough']! as bool).input(),
    );
  }
}

