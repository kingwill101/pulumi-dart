// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProfileRewriteUriRulesServer {
  /// Host part of the uri, e.g. `www.foo.com`.
  final pulumi.Input<String> host;
  /// Path part of the uri, must always end with `/`. Default value is: `/`
  final pulumi.Input<String>? path;
  /// Port part of the uri. Default value is: `none`
  final pulumi.Input<String>? port;
  /// Scheme part of the uri, e.g. `https`, `ftp`.
  final pulumi.Input<String> scheme;

  /// Creates a new [ProfileRewriteUriRulesServer].
  /// [host] Host part of the uri, e.g. `www.foo.com`.
  /// [path] Path part of the uri, must always end with `/`. Default value is: `/`
  /// [port] Port part of the uri. Default value is: `none`
  /// [scheme] Scheme part of the uri, e.g. `https`, `ftp`.
  ProfileRewriteUriRulesServer({
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

  factory ProfileRewriteUriRulesServer.fromMap(Map<String, dynamic> map) {
    return ProfileRewriteUriRulesServer(
      host: pulumi.Input.fromValue(map['host'] as String),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
    );
  }
}

