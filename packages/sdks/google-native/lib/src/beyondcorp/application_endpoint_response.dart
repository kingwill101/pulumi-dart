// ignore_for_file: unused_element, unnecessary_cast


/// ApplicationEndpoint represents a remote application endpoint.
class ApplicationEndpointResponse {
  /// Hostname or IP address of the remote application endpoint.
  final String host;
  /// Port of the remote application endpoint.
  final int port;

  /// Creates a new [ApplicationEndpointResponse].
  /// [host] Hostname or IP address of the remote application endpoint.
  /// [port] Port of the remote application endpoint.
  ApplicationEndpointResponse({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': port,
    };
  }

  factory ApplicationEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationEndpointResponse(
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}

