// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specification for redirecting traffic.
class HttpRouteRedirectResponseNetworkservicesV1beta1 {
  /// The host that will be used in the redirect response instead of the one that was supplied in the request.
  final pulumi.Input<String> hostRedirect;
  /// If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request. The default is set to false.
  final pulumi.Input<bool> httpsRedirect;
  /// The path that will be used in the redirect response instead of the one that was supplied in the request. path_redirect can not be supplied together with prefix_redirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  final pulumi.Input<String> pathRedirect;
  /// The port that will be used in the redirected request instead of the one that was supplied in the request.
  final pulumi.Input<int> portRedirect;
  /// Indicates that during redirection, the matched prefix (or path) should be swapped with this value. This option allows URLs be dynamically created based on the request.
  final pulumi.Input<String> prefixRewrite;
  /// The HTTP Status code to use for the redirect.
  final pulumi.Input<String> responseCode;
  /// if set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained. The default is set to false.
  final pulumi.Input<bool> stripQuery;

  /// Creates a new [HttpRouteRedirectResponseNetworkservicesV1beta1].
  /// [hostRedirect] The host that will be used in the redirect response instead of the one that was supplied in the request.
  /// [httpsRedirect] If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request. The default is set to false.
  /// [pathRedirect] The path that will be used in the redirect response instead of the one that was supplied in the request. path_redirect can not be supplied together with prefix_redirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  /// [portRedirect] The port that will be used in the redirected request instead of the one that was supplied in the request.
  /// [prefixRewrite] Indicates that during redirection, the matched prefix (or path) should be swapped with this value. This option allows URLs be dynamically created based on the request.
  /// [responseCode] The HTTP Status code to use for the redirect.
  /// [stripQuery] if set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained. The default is set to false.
  const HttpRouteRedirectResponseNetworkservicesV1beta1({
    required this.hostRedirect,
    required this.httpsRedirect,
    required this.pathRedirect,
    required this.portRedirect,
    required this.prefixRewrite,
    required this.responseCode,
    required this.stripQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRedirect': hostRedirect,
      'httpsRedirect': httpsRedirect,
      'pathRedirect': pathRedirect,
      'portRedirect': portRedirect,
      'prefixRewrite': prefixRewrite,
      'responseCode': responseCode,
      'stripQuery': stripQuery,
    };
  }

  factory HttpRouteRedirectResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteRedirectResponseNetworkservicesV1beta1(
      hostRedirect: pulumi.Input.fromValue(map['hostRedirect'] as String),
      httpsRedirect: pulumi.Input.fromValue(map['httpsRedirect'] as bool),
      pathRedirect: pulumi.Input.fromValue(map['pathRedirect'] as String),
      portRedirect: pulumi.Input.fromValue(map['portRedirect'] as int),
      prefixRewrite: pulumi.Input.fromValue(map['prefixRewrite'] as String),
      responseCode: pulumi.Input.fromValue(map['responseCode'] as String),
      stripQuery: pulumi.Input.fromValue(map['stripQuery'] as bool),
    );
  }
}
