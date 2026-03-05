// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceEndpointSpecPort {
  /// A random name for the port
  final pulumi.Input<String>? name;
  /// Rrepresents the protocol of a port: `tcp`, `udp` or `sctp`. Defaults to `tcp`.
  final pulumi.Input<String>? protocol;
  /// Represents the mode in which the port is to be published: 'ingress' or 'host'. Defaults to `ingress`.
  final pulumi.Input<String>? publishMode;
  /// The port on the swarm hosts
  final pulumi.Input<int>? publishedPort;
  /// The port inside the container
  final pulumi.Input<int> targetPort;

  /// Creates a new [ServiceEndpointSpecPort].
  /// [name] A random name for the port
  /// [protocol] Rrepresents the protocol of a port: `tcp`, `udp` or `sctp`. Defaults to `tcp`.
  /// [publishMode] Represents the mode in which the port is to be published: 'ingress' or 'host'. Defaults to `ingress`.
  /// [publishedPort] The port on the swarm hosts
  /// [targetPort] The port inside the container
  ServiceEndpointSpecPort({
    this.name,
    this.protocol,
    this.publishMode,
    this.publishedPort,
    required this.targetPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'protocol': ?protocol,
      'publishMode': ?publishMode,
      'publishedPort': ?publishedPort,
      'targetPort': targetPort,
    };
  }

  factory ServiceEndpointSpecPort.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointSpecPort(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishMode: (() { final guardedValue = map['publishMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishedPort: (() { final guardedValue = map['publishedPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetPort: pulumi.Input.fromValue(map['targetPort'] as int),
    );
  }
}

