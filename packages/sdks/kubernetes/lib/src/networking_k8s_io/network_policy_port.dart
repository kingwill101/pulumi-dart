// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NetworkPolicyPort describes a port to allow traffic on
class NetworkPolicyPort {
  /// endPort indicates that the range of ports from port to endPort if set, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port.
  final pulumi.Input<int>? endPort;
  /// port represents the port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
  final pulumi.Input<int>? port;
  /// protocol represents the protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
  final pulumi.Input<String>? protocol;

  /// Creates a new [NetworkPolicyPort].
  /// [endPort] endPort indicates that the range of ports from port to endPort if set, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port.
  /// [port] port represents the port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
  /// [protocol] protocol represents the protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
  NetworkPolicyPort({
    this.endPort,
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endPort': ?endPort,
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory NetworkPolicyPort.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyPort(
      endPort: map['endPort'] == null ? null : (map['endPort'] as int).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
    );
  }
}

