// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminProxyConfig specifies the cluster proxy configuration.
class BareMetalAdminProxyConfig {
  /// A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["127.0.0.1", "example.com", ".corp", "localhost"].
  final pulumi.Input<List<String>>? noProxy;
  /// Specifies the address of your proxy server. Examples: `http://domain` WARNING: Do not provide credentials in the format `http://(username:password@)domain` these will be rejected by the server.
  final pulumi.Input<String> uri;

  /// Creates a new [BareMetalAdminProxyConfig].
  /// [noProxy] A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["127.0.0.1", "example.com", ".corp", "localhost"].
  /// [uri] Specifies the address of your proxy server. Examples: `http://domain` WARNING: Do not provide credentials in the format `http://(username:password@)domain` these will be rejected by the server.
  BareMetalAdminProxyConfig({
    this.noProxy,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noProxy': ?noProxy,
      'uri': uri,
    };
  }

  factory BareMetalAdminProxyConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminProxyConfig(
      noProxy: (() { final guardedValue = map['noProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

