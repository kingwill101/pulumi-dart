// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FastUdpAppVirtualServer {
  /// IP4/IPv6 address to be used for virtual server ex: `10.1.1.1`
  final pulumi.Input<String> ip;

  /// Port number to used for accessing virtual server/application
  final pulumi.Input<int> port;

  /// Creates a new [FastUdpAppVirtualServer].
  /// [ip] IP4/IPv6 address to be used for virtual server ex: `10.1.1.1`
  /// [port] Port number to used for accessing virtual server/application
  FastUdpAppVirtualServer({required this.ip, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ip': ip, 'port': port};
  }

  factory FastUdpAppVirtualServer.fromMap(Map<String, dynamic> map) {
    return FastUdpAppVirtualServer(
      ip: pulumi.Input.fromValue(map['ip'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
