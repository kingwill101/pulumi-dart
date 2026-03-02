// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DEPRECATED 1.9 - This group version of NetworkPolicyPort is deprecated by networking/v1/NetworkPolicyPort.
class NetworkPolicyPortPatch {
  /// If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
  final pulumi.Input<int>? port;
  /// Optional.  The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
  final pulumi.Input<String>? protocol;

  /// Creates a new [NetworkPolicyPortPatch].
  /// [port] If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
  /// [protocol] Optional.  The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
  NetworkPolicyPortPatch({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory NetworkPolicyPortPatch.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyPortPatch(
      port: map['port'] == null ? null : (map['port']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
    );
  }
}

