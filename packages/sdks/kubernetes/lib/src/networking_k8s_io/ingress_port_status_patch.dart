// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IngressPortStatus represents the error condition of a service port
class IngressPortStatusPatch {
  /// error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
  /// CamelCase names
  /// - cloud provider specific error values must have names that comply with the
  /// format foo.example.com/CamelCase.
  final pulumi.Input<String>? error;
  /// port is the port number of the ingress port.
  final pulumi.Input<int>? port;
  /// protocol is the protocol of the ingress port. The supported values are: "TCP", "UDP", "SCTP"
  final pulumi.Input<String>? protocol;

  /// Creates a new [IngressPortStatusPatch].
  /// [error] error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
  /// [port] port is the port number of the ingress port.
  /// [protocol] protocol is the protocol of the ingress port. The supported values are: "TCP", "UDP", "SCTP"
  IngressPortStatusPatch({
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

  factory IngressPortStatusPatch.fromMap(Map<String, dynamic> map) {
    return IngressPortStatusPatch(
      error: map['error'] == null ? null : (map['error'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
    );
  }
}

