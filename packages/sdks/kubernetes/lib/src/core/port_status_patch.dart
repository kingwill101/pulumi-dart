// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PortStatus represents the error condition of a service port
class PortStatusPatch {
  /// Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
  /// CamelCase names
  /// - cloud provider specific error values must have names that comply with the
  /// format foo.example.com/CamelCase.
  final pulumi.Input<String>? error;
  /// Port is the port number of the service port of which status is recorded here
  final pulumi.Input<int>? port;
  /// Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP"
  final pulumi.Input<String>? protocol;

  /// Creates a new [PortStatusPatch].
  /// [error] Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
  /// [port] Port is the port number of the service port of which status is recorded here
  /// [protocol] Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP"
  const PortStatusPatch({
    this.error,
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error,
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory PortStatusPatch.fromMap(Map<String, dynamic> map) {
    return PortStatusPatch(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
