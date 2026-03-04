// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For a non-Azure machine that is not connected directly to the internet, specify a proxy server that the non-Azure machine can use.
class ProxyServerPropertiesResponse {
  /// Proxy server IP
  final pulumi.Input<String>? ip;

  /// Proxy server port
  final pulumi.Input<String>? port;

  /// Creates a new [ProxyServerPropertiesResponse].
  /// [ip] Proxy server IP
  /// [port] Proxy server port
  ProxyServerPropertiesResponse({this.ip, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ip': ?ip, 'port': ?port};
  }

  factory ProxyServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProxyServerPropertiesResponse(
      ip: (() {
        final guardedValue = map['ip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
