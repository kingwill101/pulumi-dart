// ignore_for_file: unused_element, unnecessary_cast


/// Describes a container endpoint.
class EndpointPropertiesResponse {
  /// The name of the endpoint.
  final String name;
  /// Port used by the container.
  final int? port;

  /// Creates a new [EndpointPropertiesResponse].
  /// [name] The name of the endpoint.
  /// [port] Port used by the container.
  EndpointPropertiesResponse({
    required this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': ?port,
    };
  }

  factory EndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesResponse(
      name: map['name'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

