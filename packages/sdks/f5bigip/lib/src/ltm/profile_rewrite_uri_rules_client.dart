// ignore_for_file: unused_element, unnecessary_cast


class ProfileRewriteUriRulesClient {
  /// Host part of the uri, e.g. `www.foo.com`.
  final String host;
  /// Path part of the uri, must always end with `/`. Default value is: `/`
  final String? path;
  /// Port part of the uri. Default value is: `none`
  final String? port;
  /// Scheme part of the uri, e.g. `https`, `ftp`.
  final String scheme;

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
      host: map['host'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      scheme: map['scheme'] as String,
    );
  }
}

