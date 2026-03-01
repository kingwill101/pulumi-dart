// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecIngressRuleRedirect {
  final String? authority;
  final int? port;
  final int? redirectCode;
  final String? scheme;
  final String? uri;

  /// Creates a new [GetAppSpecIngressRuleRedirect].
  /// [authority] Optional.
  /// [port] Optional.
  /// [redirectCode] Optional.
  /// [scheme] Optional.
  /// [uri] Optional.
  GetAppSpecIngressRuleRedirect({
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

  factory GetAppSpecIngressRuleRedirect.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRuleRedirect(
      authority: map['authority'] == null ? null : map['authority'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      redirectCode: map['redirectCode'] == null ? null : map['redirectCode'] as int,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

