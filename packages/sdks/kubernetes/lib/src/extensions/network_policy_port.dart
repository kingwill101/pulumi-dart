// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DEPRECATED 1.9 - This group version of NetworkPolicyPort is deprecated by networking/v1/NetworkPolicyPort.
class NetworkPolicyPort {
  /// If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
  final pulumi.Input<dynamic>? port;
  /// Optional.  The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
  final pulumi.Input<String?>? protocol;

  /// Creates a new [NetworkPolicyPort].
  /// [port] If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
  /// [protocol] Optional.  The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
  const NetworkPolicyPort({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory NetworkPolicyPort.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyPort(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
