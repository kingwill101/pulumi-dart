// ignore_for_file: unused_element, unnecessary_cast


/// Describes a container endpoint.
class EndpointProperties {
  /// The name of the endpoint.
  final String name;
  /// Port used by the container.
  final int? port;

  /// Creates a new [EndpointProperties].
  /// [name] The name of the endpoint.
  /// [port] Port used by the container.
  EndpointProperties({
    required this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': ?port,
    };
  }

  factory EndpointProperties.fromMap(Map<String, dynamic> map) {
    return EndpointProperties(
      name: map['name'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

