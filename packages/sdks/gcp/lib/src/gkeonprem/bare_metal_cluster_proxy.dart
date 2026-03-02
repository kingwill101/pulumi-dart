// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterProxy {
  /// A list of IPs, hostnames, and domains that should skip the proxy.
  /// For example ["127.0.0.1", "example.com", ".corp", "localhost"].
  final pulumi.Input<List<String>>? noProxies;
  /// Specifies the address of your proxy server.
  /// For example: http://domain
  /// WARNING: Do not provide credentials in the format
  /// of http://(username:password@)domain these will be rejected by the server.
  final pulumi.Input<String> uri;

  /// Creates a new [BareMetalClusterProxy].
  /// [noProxies] A list of IPs, hostnames, and domains that should skip the proxy.
  /// [uri] Specifies the address of your proxy server.
  BareMetalClusterProxy({
    this.noProxies,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noProxies': ?noProxies,
      'uri': uri,
    };
  }

  factory BareMetalClusterProxy.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterProxy(
      noProxies: map['noProxies'] == null ? null : ((map['noProxies']! as List).cast<String>()).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

