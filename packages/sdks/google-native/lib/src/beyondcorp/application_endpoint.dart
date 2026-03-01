// ignore_for_file: unused_element, unnecessary_cast


/// ApplicationEndpoint represents a remote application endpoint.
class ApplicationEndpoint {
  /// Hostname or IP address of the remote application endpoint.
  final String host;
  /// Port of the remote application endpoint.
  final int port;

  /// Creates a new [ApplicationEndpoint].
  /// [host] Hostname or IP address of the remote application endpoint.
  /// [port] Port of the remote application endpoint.
  ApplicationEndpoint({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': port,
    };
  }

  factory ApplicationEndpoint.fromMap(Map<String, dynamic> map) {
    return ApplicationEndpoint(
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}

