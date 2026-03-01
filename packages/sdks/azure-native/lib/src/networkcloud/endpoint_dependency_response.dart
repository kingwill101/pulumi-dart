// ignore_for_file: unused_element, unnecessary_cast


class EndpointDependencyResponse {
  /// The domain name of the dependency.
  final String domainName;
  /// The port of this endpoint.
  final double? port;

  /// Creates a new [EndpointDependencyResponse].
  /// [domainName] The domain name of the dependency.
  /// [port] The port of this endpoint.
  EndpointDependencyResponse({
    required this.domainName,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'port': ?port,
    };
  }

  factory EndpointDependencyResponse.fromMap(Map<String, dynamic> map) {
    return EndpointDependencyResponse(
      domainName: map['domainName'] as String,
      port: map['port'] == null ? null : map['port'] as double,
    );
  }
}

