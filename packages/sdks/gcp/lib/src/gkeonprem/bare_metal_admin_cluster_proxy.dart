// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterProxy {
  /// A list of IPs, hostnames, and domains that should skip the proxy.
  /// For example: ["127.0.0.1", "example.com", ".corp", "localhost"].
  final pulumi.Input<List<String>>? noProxies;
  /// Specifies the address of your proxy server.
  /// For Example: http://domain
  /// WARNING: Do not provide credentials in the format
  /// of http://(username:password@)domain these will be rejected by the server.
  final pulumi.Input<String> uri;

  /// Creates a new [BareMetalAdminClusterProxy].
  /// [noProxies] A list of IPs, hostnames, and domains that should skip the proxy.
  /// [uri] Specifies the address of your proxy server.
  BareMetalAdminClusterProxy({
    this.noProxies,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noProxies': ?noProxies,
      'uri': uri,
    };
  }

  factory BareMetalAdminClusterProxy.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterProxy(
      noProxies: (() { final guardedValue = map['noProxies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

