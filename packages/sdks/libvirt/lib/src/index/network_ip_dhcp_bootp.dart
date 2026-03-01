// ignore_for_file: unused_element, unnecessary_cast


class NetworkIpDhcpBootp {
  /// Specifies a file used for BOOTP configurations.
  final String? file;
  /// Sets the server address for the BOOTP configuration.
  final String? server;

  /// Creates a new [NetworkIpDhcpBootp].
  /// [file] Specifies a file used for BOOTP configurations.
  /// [server] Sets the server address for the BOOTP configuration.
  NetworkIpDhcpBootp({
    this.file,
    this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?file,
      'server': ?server,
    };
  }

  factory NetworkIpDhcpBootp.fromMap(Map<String, dynamic> map) {
    return NetworkIpDhcpBootp(
      file: map['file'] == null ? null : map['file'] as String,
      server: map['server'] == null ? null : map['server'] as String,
    );
  }
}

