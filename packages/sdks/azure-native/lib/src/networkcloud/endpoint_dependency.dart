// ignore_for_file: unused_element, unnecessary_cast


class EndpointDependency {
  /// The domain name of the dependency.
  final String domainName;
  /// The port of this endpoint.
  final double? port;

  /// Creates a new [EndpointDependency].
  /// [domainName] The domain name of the dependency.
  /// [port] The port of this endpoint.
  EndpointDependency({
    required this.domainName,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'port': ?port,
    };
  }

  factory EndpointDependency.fromMap(Map<String, dynamic> map) {
    return EndpointDependency(
      domainName: map['domainName'] as String,
      port: map['port'] == null ? null : map['port'] as double,
    );
  }
}

