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
      authority: (() {
        final guardedValue = map['authority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      redirectCode: (() {
        final guardedValue = map['redirectCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scheme: (() {
        final guardedValue = map['scheme'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
