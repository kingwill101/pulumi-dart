// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies settings for an HTTP redirect.
class HttpRedirectActionResponse {
  /// The host that is used in the redirect response instead of the one that was supplied in the request. The value must be from 1 to 255 characters.
  final pulumi.Input<String> hostRedirect;
  /// If set to true, the URL scheme in the redirected request is set to HTTPS. If set to false, the URL scheme of the redirected request remains the same as that of the request. This must only be set for URL maps used in TargetHttpProxys. Setting this true for TargetHttpsProxy is not permitted. The default is set to false.
  final pulumi.Input<bool> httpsRedirect;
  /// The path that is used in the redirect response instead of the one that was supplied in the request. pathRedirect cannot be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request is used for the redirect. The value must be from 1 to 1024 characters.
  final pulumi.Input<String> pathRedirect;
  /// The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch, retaining the remaining portion of the URL before redirecting the request. prefixRedirect cannot be supplied together with pathRedirect. Supply one alone or neither. If neither is supplied, the path of the original request is used for the redirect. The value must be from 1 to 1024 characters.
  final pulumi.Input<String> prefixRedirect;
  /// The HTTP Status code to use for this RedirectAction. Supported values are: - MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301. - FOUND, which corresponds to 302. - SEE_OTHER which corresponds to 303. - TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method is retained. - PERMANENT_REDIRECT, which corresponds to 308. In this case, the request method is retained.
  final pulumi.Input<String> redirectResponseCode;
  /// If set to true, any accompanying query portion of the original URL is removed before redirecting the request. If set to false, the query portion of the original URL is retained. The default is set to false.
  final pulumi.Input<bool> stripQuery;

  /// Creates a new [HttpRedirectActionResponse].
  /// [hostRedirect] The host that is used in the redirect response instead of the one that was supplied in the request. The value must be from 1 to 255 characters.
  /// [httpsRedirect] If set to true, the URL scheme in the redirected request is set to HTTPS. If set to false, the URL scheme of the redirected request remains the same as that of the request. This must only be set for URL maps used in TargetHttpProxys. Setting this true for TargetHttpsProxy is not permitted. The default is set to false.
  /// [pathRedirect] The path that is used in the redirect response instead of the one that was supplied in the request. pathRedirect cannot be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request is used for the redirect. The value must be from 1 to 1024 characters.
  /// [prefixRedirect] The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch, retaining the remaining portion of the URL before redirecting the request. prefixRedirect cannot be supplied together with pathRedirect. Supply one alone or neither. If neither is supplied, the path of the original request is used for the redirect. The value must be from 1 to 1024 characters.
  /// [redirectResponseCode] The HTTP Status code to use for this RedirectAction. Supported values are: - MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301. - FOUND, which corresponds to 302. - SEE_OTHER which corresponds to 303. - TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method is retained. - PERMANENT_REDIRECT, which corresponds to 308. In this case, the request method is retained.
  /// [stripQuery] If set to true, any accompanying query portion of the original URL is removed before redirecting the request. If set to false, the query portion of the original URL is retained. The default is set to false.
  const HttpRedirectActionResponse({
    required this.hostRedirect,
    required this.httpsRedirect,
    required this.pathRedirect,
    required this.prefixRedirect,
    required this.redirectResponseCode,
    required this.stripQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRedirect': hostRedirect,
      'httpsRedirect': httpsRedirect,
      'pathRedirect': pathRedirect,
      'prefixRedirect': prefixRedirect,
      'redirectResponseCode': redirectResponseCode,
      'stripQuery': stripQuery,
    };
  }

  factory HttpRedirectActionResponse.fromMap(Map<String, dynamic> map) {
    return HttpRedirectActionResponse(
      hostRedirect: pulumi.Input.fromValue(map['hostRedirect'] as String),
      httpsRedirect: pulumi.Input.fromValue(map['httpsRedirect'] as bool),
      pathRedirect: pulumi.Input.fromValue(map['pathRedirect'] as String),
      prefixRedirect: pulumi.Input.fromValue(map['prefixRedirect'] as String),
      redirectResponseCode: pulumi.Input.fromValue(map['redirectResponseCode'] as String),
      stripQuery: pulumi.Input.fromValue(map['stripQuery'] as bool),
    );
  }
}
