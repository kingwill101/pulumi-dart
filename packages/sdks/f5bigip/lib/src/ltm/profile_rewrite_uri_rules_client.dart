// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProfileRewriteUriRulesClient {
  /// Host part of the uri, e.g. `www.foo.com`.
  final pulumi.Input<String> host;
  /// Path part of the uri, must always end with `/`. Default value is: `/`
  final pulumi.Input<String>? path;
  /// Port part of the uri. Default value is: `none`
  final pulumi.Input<String>? port;
  /// Scheme part of the uri, e.g. `https`, `ftp`.
  final pulumi.Input<String> scheme;

  /// Creates a new [ProfileRewriteUriRulesClient].
  /// [host] Host part of the uri, e.g. `www.foo.com`.
  /// [path] Path part of the uri, must always end with `/`. Default value is: `/`
  /// [port] Port part of the uri. Default value is: `none`
  /// [scheme] Scheme part of the uri, e.g. `https`, `ftp`.
  ProfileRewriteUriRulesClient({
    required this.host,
    this.path,
    this.port,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'path': ?path,
      'port': ?port,
      'scheme': scheme,
    };
  }

  factory ProfileRewriteUriRulesClient.fromMap(Map<String, dynamic> map) {
    return ProfileRewriteUriRulesClient(
      host: (map['host'] as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      scheme: (map['scheme'] as String).input(),
    );
  }
}

