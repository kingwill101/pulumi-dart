// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerPort represents a network port in a single container.
class ContainerPort {
  /// Port number the container listens on. If present, this must be a valid port number, 0 &lt; x &lt; 65536. If not present, it will default to port 8080. For more information, see https://cloud.google.com/run/docs/container-contract#port
  final pulumi.Input<int>? containerPort;

  /// If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  final pulumi.Input<String>? name;

  /// Protocol for port. Must be "TCP". Defaults to "TCP".
  final pulumi.Input<String>? protocol;

  /// Creates a new [ContainerPort].
  /// [containerPort] Port number the container listens on. If present, this must be a valid port number, 0 &lt; x &lt; 65536. If not present, it will default to port 8080. For more information, see https://cloud.google.com/run/docs/container-contract#port
  /// [name] If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  /// [protocol] Protocol for port. Must be "TCP". Defaults to "TCP".
  ContainerPort({this.containerPort, this.name, this.protocol});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': ?containerPort,
      'name': ?name,
      'protocol': ?protocol,
    };
  }

  factory ContainerPort.fromMap(Map<String, dynamic> map) {
    return ContainerPort(
      containerPort: (() {
        final guardedValue = map['containerPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
