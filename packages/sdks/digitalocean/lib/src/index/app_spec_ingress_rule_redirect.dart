// ignore_for_file: unused_element, unnecessary_cast


class AppSpecIngressRuleRedirect {
  /// The authority/host to redirect to. This can be a hostname or IP address.
  final String? authority;
  /// The port to redirect to.
  final int? port;
  /// The redirect code to use. Supported values are `300`, `301`, `302`, `303`, `304`, `307`, `308`.
  final int? redirectCode;
  /// The scheme to redirect to. Supported values are `http` or `https`
  final String? scheme;
  /// An optional URI path to redirect to.
  final String? uri;

  /// Creates a new [AppSpecIngressRuleRedirect].
  /// [authority] The authority/host to redirect to. This can be a hostname or IP address.
  /// [port] The port to redirect to.
  /// [redirectCode] The redirect code to use. Supported values are `300`, `301`, `302`, `303`, `304`, `307`, `308`.
  /// [scheme] The scheme to redirect to. Supported values are `http` or `https`
  /// [uri] An optional URI path to redirect to.
  AppSpecIngressRuleRedirect({
    this.authority,
    this.port,
    this.redirectCode,
    this.scheme,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?authority,
      'port': ?port,
      'redirectCode': ?redirectCode,
      'scheme': ?scheme,
      'uri': ?uri,
    };
  }

  factory AppSpecIngressRuleRedirect.fromMap(Map<String, dynamic> map) {
    return AppSpecIngressRuleRedirect(
      authority: map['authority'] == null ? null : map['authority'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      redirectCode: map['redirectCode'] == null ? null : map['redirectCode'] as int,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

