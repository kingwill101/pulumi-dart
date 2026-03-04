// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminProxyConfig specifies the cluster proxy configuration.
class BareMetalAdminProxyConfigResponse {
  /// A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["127.0.0.1", "example.com", ".corp", "localhost"].
  final pulumi.Input<List<String>> noProxy;

  /// Specifies the address of your proxy server. Examples: `http://domain` WARNING: Do not provide credentials in the format `http://(username:password@)domain` these will be rejected by the server.
  final pulumi.Input<String> uri;

  /// Creates a new [BareMetalAdminProxyConfigResponse].
  /// [noProxy] A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["127.0.0.1", "example.com", ".corp", "localhost"].
  /// [uri] Specifies the address of your proxy server. Examples: `http://domain` WARNING: Do not provide credentials in the format `http://(username:password@)domain` these will be rejected by the server.
  BareMetalAdminProxyConfigResponse({required this.noProxy, required this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'noProxy': noProxy, 'uri': uri};
  }

  factory BareMetalAdminProxyConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminProxyConfigResponse(
      noProxy: pulumi.Input.fromValue((map['noProxy'] as List).cast<String>()),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
