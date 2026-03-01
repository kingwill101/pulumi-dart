// ignore_for_file: unused_element, unnecessary_cast


class FastHttpsAppVirtualServer {
  /// IP4/IPv6 address to be used for virtual server ex: `10.1.1.1`
  final String ip;
  /// Port number to used for accessing virtual server/application
  final int port;

  /// Creates a new [FastHttpsAppVirtualServer].
  /// [ip] IP4/IPv6 address to be used for virtual server ex: `10.1.1.1`
  /// [port] Port number to used for accessing virtual server/application
  FastHttpsAppVirtualServer({
    required this.ip,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'port': port,
    };
  }

  factory FastHttpsAppVirtualServer.fromMap(Map<String, dynamic> map) {
    return FastHttpsAppVirtualServer(
      ip: map['ip'] as String,
      port: map['port'] as int,
    );
  }
}

