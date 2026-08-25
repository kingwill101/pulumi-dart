// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherPathRuleUrlRedirect {
  /// The host that will be used in the redirect response instead of the one that was
  /// supplied in the request. The value must be between 1 and 255 characters.
  final pulumi.Input<String?>? hostRedirect;
  /// If set to true, the URL scheme in the redirected request is set to https. If set
  /// to false, the URL scheme of the redirected request will remain the same as that
  /// of the request. This must only be set for UrlMaps used in TargetHttpProxys.
  /// Setting this true for TargetHttpsProxy is not permitted. Defaults to false.
  final pulumi.Input<bool?>? httpsRedirect;
  /// The path that will be used in the redirect response instead of the one that was
  /// supplied in the request. Only one of pathRedirect or prefixRedirect must be
  /// specified. The value must be between 1 and 1024 characters.
  final pulumi.Input<String?>? pathRedirect;
  /// The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,
  /// retaining the remaining portion of the URL before redirecting the request.
  final pulumi.Input<String?>? prefixRedirect;
  /// The HTTP Status code to use for this RedirectAction. Supported values are:
  /// * MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.
  /// * FOUND, which corresponds to 302.
  /// * SEE_OTHER which corresponds to 303.
  /// * TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method will be retained.
  /// * PERMANENT_REDIRECT, which corresponds to 308. In this case, the request method will be retained.
  final pulumi.Input<String?>? redirectResponseCode;
  /// If set to true, any accompanying query portion of the original URL is removed
  /// prior to redirecting the request. If set to false, the query portion of the
  /// original URL is retained. Defaults to false.
  final pulumi.Input<bool> stripQuery;

  /// Creates a new [URLMapPathMatcherPathRuleUrlRedirect].
  /// [hostRedirect] The host that will be used in the redirect response instead of the one that was
  /// [httpsRedirect] If set to true, the URL scheme in the redirected request is set to https. If set
  /// [pathRedirect] The path that will be used in the redirect response instead of the one that was
  /// [prefixRedirect] The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,
  /// [redirectResponseCode] The HTTP Status code to use for this RedirectAction. Supported values are:
  /// [stripQuery] If set to true, any accompanying query portion of the original URL is removed
  const URLMapPathMatcherPathRuleUrlRedirect({
    this.hostRedirect,
    this.httpsRedirect,
    this.pathRedirect,
    this.prefixRedirect,
    this.redirectResponseCode,
    required this.stripQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRedirect': ?hostRedirect,
      'httpsRedirect': ?httpsRedirect,
      'pathRedirect': ?pathRedirect,
      'prefixRedirect': ?prefixRedirect,
      'redirectResponseCode': ?redirectResponseCode,
      'stripQuery': stripQuery,
    };
  }

  factory URLMapPathMatcherPathRuleUrlRedirect.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherPathRuleUrlRedirect(
      hostRedirect: (() { final guardedValue = map['hostRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsRedirect: (() { final guardedValue = map['httpsRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pathRedirect: (() { final guardedValue = map['pathRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixRedirect: (() { final guardedValue = map['prefixRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectResponseCode: (() { final guardedValue = map['redirectResponseCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stripQuery: pulumi.Input.fromValue(map['stripQuery'] as bool),
    );
  }
}
