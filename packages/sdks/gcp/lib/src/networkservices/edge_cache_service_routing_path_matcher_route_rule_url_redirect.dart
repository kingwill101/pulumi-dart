// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirect {
  /// The host that will be used in the redirect response instead of the one that was supplied in the request.
  final pulumi.Input<String>? hostRedirect;
  /// If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request.
  /// This can only be set if there is at least one (1) edgeSslCertificate set on the service.
  final pulumi.Input<bool>? httpsRedirect;
  /// The path that will be used in the redirect response instead of the one that was supplied in the request.
  /// pathRedirect cannot be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  /// The path value must be between 1 and 1024 characters.
  final pulumi.Input<String>? pathRedirect;
  /// The prefix that replaces the prefixMatch specified in the routeRule, retaining the remaining portion of the URL before redirecting the request.
  /// prefixRedirect cannot be supplied together with pathRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  final pulumi.Input<String>? prefixRedirect;
  /// The HTTP Status code to use for this RedirectAction.
  /// The supported values are:
  /// - `MOVED_PERMANENTLY_DEFAULT`, which is the default value and corresponds to 301.
  /// - `FOUND`, which corresponds to 302.
  /// - `SEE_OTHER` which corresponds to 303.
  /// - `TEMPORARY_REDIRECT`, which corresponds to 307. in this case, the request method will be retained.
  /// - `PERMANENT_REDIRECT`, which corresponds to 308. in this case, the request method will be retained.
  /// Possible values are: `MOVED_PERMANENTLY_DEFAULT`, `FOUND`, `SEE_OTHER`, `TEMPORARY_REDIRECT`, `PERMANENT_REDIRECT`.
  final pulumi.Input<String>? redirectResponseCode;
  /// If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained.
  final pulumi.Input<bool>? stripQuery;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirect].
  /// [hostRedirect] The host that will be used in the redirect response instead of the one that was supplied in the request.
  /// [httpsRedirect] If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request.
  /// [pathRedirect] The path that will be used in the redirect response instead of the one that was supplied in the request.
  /// [prefixRedirect] The prefix that replaces the prefixMatch specified in the routeRule, retaining the remaining portion of the URL before redirecting the request.
  /// [redirectResponseCode] The HTTP Status code to use for this RedirectAction.
  /// [stripQuery] If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained.
  EdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirect({
    this.hostRedirect,
    this.httpsRedirect,
    this.pathRedirect,
    this.prefixRedirect,
    this.redirectResponseCode,
    this.stripQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRedirect': ?hostRedirect,
      'httpsRedirect': ?httpsRedirect,
      'pathRedirect': ?pathRedirect,
      'prefixRedirect': ?prefixRedirect,
      'redirectResponseCode': ?redirectResponseCode,
      'stripQuery': ?stripQuery,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirect.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirect(
      hostRedirect: (() { final guardedValue = map['hostRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsRedirect: (() { final guardedValue = map['httpsRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pathRedirect: (() { final guardedValue = map['pathRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixRedirect: (() { final guardedValue = map['prefixRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectResponseCode: (() { final guardedValue = map['redirectResponseCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stripQuery: (() { final guardedValue = map['stripQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

