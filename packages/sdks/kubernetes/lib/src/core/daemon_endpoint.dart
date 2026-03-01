// ignore_for_file: unused_element, unnecessary_cast


/// DaemonEndpoint contains information about a single Daemon endpoint.
class DaemonEndpoint {
  /// Port number of the given endpoint.
  final int port;

  /// Creates a new [DaemonEndpoint].
  /// [port] Port number of the given endpoint.
  DaemonEndpoint({
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Port': port,
    };
  }

  factory DaemonEndpoint.fromMap(Map<String, dynamic> map) {
    return DaemonEndpoint(
      port: map['Port'] as int,
    );
  }
}

