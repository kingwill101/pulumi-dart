// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecIngressRuleRedirect {
  /// The authority/host to redirect to. This can be a hostname or IP address.
  final pulumi.Input<String>? authority;
  /// The port to redirect to.
  final pulumi.Input<int>? port;
  /// The redirect code to use. Supported values are `300`, `301`, `302`, `303`, `304`, `307`, `308`.
  final pulumi.Input<int>? redirectCode;
  /// The scheme to redirect to. Supported values are `http` or `https`
  final pulumi.Input<String>? scheme;
  /// An optional URI path to redirect to.
  final pulumi.Input<String>? uri;

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
      authority: map['authority'] == null ? null : (map['authority'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      redirectCode: map['redirectCode'] == null ? null : (map['redirectCode'] as int).input(),
      scheme: map['scheme'] == null ? null : (map['scheme'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

