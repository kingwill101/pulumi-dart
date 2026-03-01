// ignore_for_file: unused_element, unnecessary_cast


/// For a non-Azure machine that is not connected directly to the internet, specify a proxy server that the non-Azure machine can use.
class ProxyServerPropertiesResponse {
  /// Proxy server IP
  final String? ip;
  /// Proxy server port
  final String? port;

  /// Creates a new [ProxyServerPropertiesResponse].
  /// [ip] Proxy server IP
  /// [port] Proxy server port
  ProxyServerPropertiesResponse({
    this.ip,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
      'port': ?port,
    };
  }

  factory ProxyServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProxyServerPropertiesResponse(
      ip: map['ip'] == null ? null : map['ip'] as String,
      port: map['port'] == null ? null : map['port'] as String,
    );
  }
}

