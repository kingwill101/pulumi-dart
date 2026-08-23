// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRouteRuleActionRedirect {
  /// The host that will be used in the redirect response instead of the one that was supplied in the request.
  final pulumi.Input<String>? hostRedirect;
  /// If set to true, the URL scheme in the redirected request is set to https.
  final pulumi.Input<bool>? httpsRedirect;
  /// The path that will be used in the redirect response instead of the one that was supplied in the request. pathRedirect can not be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  final pulumi.Input<String>? pathRedirect;
  /// The port that will be used in the redirected request instead of the one that was supplied in the request.
  final pulumi.Input<int>? portRedirect;
  /// Indicates that during redirection, the matched prefix (or path) should be swapped with this value.
  final pulumi.Input<String>? prefixRewrite;
  /// The HTTP Status code to use for the redirect.
  final pulumi.Input<String>? responseCode;
  /// If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request.
  final pulumi.Input<bool>? stripQuery;

  /// Creates a new [HttpRouteRuleActionRedirect].
  /// [hostRedirect] The host that will be used in the redirect response instead of the one that was supplied in the request.
  /// [httpsRedirect] If set to true, the URL scheme in the redirected request is set to https.
  /// [pathRedirect] The path that will be used in the redirect response instead of the one that was supplied in the request. pathRedirect can not be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  /// [portRedirect] The port that will be used in the redirected request instead of the one that was supplied in the request.
  /// [prefixRewrite] Indicates that during redirection, the matched prefix (or path) should be swapped with this value.
  /// [responseCode] The HTTP Status code to use for the redirect.
  /// [stripQuery] If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request.
  const HttpRouteRuleActionRedirect({
    this.hostRedirect,
    this.httpsRedirect,
    this.pathRedirect,
    this.portRedirect,
    this.prefixRewrite,
    this.responseCode,
    this.stripQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRedirect': ?hostRedirect,
      'httpsRedirect': ?httpsRedirect,
      'pathRedirect': ?pathRedirect,
      'portRedirect': ?portRedirect,
      'prefixRewrite': ?prefixRewrite,
      'responseCode': ?responseCode,
      'stripQuery': ?stripQuery,
    };
  }

  factory HttpRouteRuleActionRedirect.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionRedirect(
      hostRedirect: (() { final guardedValue = map['hostRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsRedirect: (() { final guardedValue = map['httpsRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pathRedirect: (() { final guardedValue = map['pathRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portRedirect: (() { final guardedValue = map['portRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefixRewrite: (() { final guardedValue = map['prefixRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseCode: (() { final guardedValue = map['responseCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stripQuery: (() { final guardedValue = map['stripQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
