// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayFrontendPort {
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// The name of the Frontend Port.
  final String name;
  /// The port used for this Frontend Port.
  final int port;

  /// Creates a new [ApplicationGatewayFrontendPort].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of the Frontend Port.
  /// [port] The port used for this Frontend Port.
  ApplicationGatewayFrontendPort({
    this.id,
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'port': port,
    };
  }

  factory ApplicationGatewayFrontendPort.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFrontendPort(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}

