// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For a non-Azure machine that is not connected directly to the internet, specify a proxy server that the non-Azure machine can use.
class ProxyServerProperties {
  /// Proxy server IP
  final pulumi.Input<String>? ip;
  /// Proxy server port
  final pulumi.Input<String>? port;

  /// Creates a new [ProxyServerProperties].
  /// [ip] Proxy server IP
  /// [port] Proxy server port
  ProxyServerProperties({
    this.ip,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
      'port': ?port,
    };
  }

  factory ProxyServerProperties.fromMap(Map<String, dynamic> map) {
    return ProxyServerProperties(
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as String).input(),
    );
  }
}

