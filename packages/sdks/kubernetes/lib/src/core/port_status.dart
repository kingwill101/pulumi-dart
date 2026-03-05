// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PortStatus represents the error condition of a service port
class PortStatus {
  /// Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
  /// CamelCase names
  /// - cloud provider specific error values must have names that comply with the
  /// format foo.example.com/CamelCase.
  final pulumi.Input<String>? error;
  /// Port is the port number of the service port of which status is recorded here
  final pulumi.Input<int> port;
  /// Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP"
  final pulumi.Input<String> protocol;

  /// Creates a new [PortStatus].
  /// [error] Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
  /// [port] Port is the port number of the service port of which status is recorded here
  /// [protocol] Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP"
  PortStatus({
    this.error,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error,
      'port': port,
      'protocol': protocol,
    };
  }

  factory PortStatus.fromMap(Map<String, dynamic> map) {
    return PortStatus(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

