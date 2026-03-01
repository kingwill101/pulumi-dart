// ignore_for_file: unused_element, unnecessary_cast


class ServiceEndpointSpecPort {
  /// A random name for the port
  final String? name;
  /// Rrepresents the protocol of a port: `tcp`, `udp` or `sctp`. Defaults to `tcp`.
  final String? protocol;
  /// Represents the mode in which the port is to be published: 'ingress' or 'host'. Defaults to `ingress`.
  final String? publishMode;
  /// The port on the swarm hosts
  final int? publishedPort;
  /// The port inside the container
  final int targetPort;

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
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      publishMode: map['publishMode'] == null ? null : map['publishMode'] as String,
      publishedPort: map['publishedPort'] == null ? null : map['publishedPort'] as int,
      targetPort: map['targetPort'] as int,
    );
  }
}

