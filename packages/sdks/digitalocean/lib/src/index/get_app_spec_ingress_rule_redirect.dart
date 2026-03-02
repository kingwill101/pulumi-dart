// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecIngressRuleRedirect {
  final pulumi.Input<String>? authority;
  final pulumi.Input<int>? port;
  final pulumi.Input<int>? redirectCode;
  final pulumi.Input<String>? scheme;
  final pulumi.Input<String>? uri;

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
      authority: map['authority'] == null ? null : (map['authority'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      redirectCode: map['redirectCode'] == null ? null : (map['redirectCode'] as int).input(),
      scheme: map['scheme'] == null ? null : (map['scheme'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

