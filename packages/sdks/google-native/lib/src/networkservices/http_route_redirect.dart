// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_redirect_response_code.dart';

/// The specification for redirecting traffic.
class HttpRouteRedirect {
  /// The host that will be used in the redirect response instead of the one that was supplied in the request.
  final pulumi.Input<String>? hostRedirect;
  /// If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request. The default is set to false.
  final pulumi.Input<bool>? httpsRedirect;
  /// The path that will be used in the redirect response instead of the one that was supplied in the request. path_redirect can not be supplied together with prefix_redirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  final pulumi.Input<String>? pathRedirect;
  /// The port that will be used in the redirected request instead of the one that was supplied in the request.
  final pulumi.Input<int>? portRedirect;
  /// Indicates that during redirection, the matched prefix (or path) should be swapped with this value. This option allows URLs be dynamically created based on the request.
  final pulumi.Input<String>? prefixRewrite;
  /// The HTTP Status code to use for the redirect.
  final pulumi.Input<HttpRouteRedirectResponseCode>? responseCode;
  /// if set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained. The default is set to false.
  final pulumi.Input<bool>? stripQuery;

  /// Creates a new [HttpRouteRedirect].
  /// [hostRedirect] The host that will be used in the redirect response instead of the one that was supplied in the request.
  /// [httpsRedirect] If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request. The default is set to false.
  /// [pathRedirect] The path that will be used in the redirect response instead of the one that was supplied in the request. path_redirect can not be supplied together with prefix_redirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  /// [portRedirect] The port that will be used in the redirected request instead of the one that was supplied in the request.
  /// [prefixRewrite] Indicates that during redirection, the matched prefix (or path) should be swapped with this value. This option allows URLs be dynamically created based on the request.
  /// [responseCode] The HTTP Status code to use for the redirect.
  /// [stripQuery] if set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained. The default is set to false.
  HttpRouteRedirect({
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
      'responseCode': ?pulumi.Input.mapOptionalInputValue<HttpRouteRedirectResponseCode, String>(responseCode, (value) => value.value),
      'stripQuery': ?stripQuery,
    };
  }

  factory HttpRouteRedirect.fromMap(Map<String, dynamic> map) {
    return HttpRouteRedirect(
      hostRedirect: map['hostRedirect'] == null ? null : (map['hostRedirect'] as String).input(),
      httpsRedirect: map['httpsRedirect'] == null ? null : (map['httpsRedirect'] as bool).input(),
      pathRedirect: map['pathRedirect'] == null ? null : (map['pathRedirect'] as String).input(),
      portRedirect: map['portRedirect'] == null ? null : (map['portRedirect'] as int).input(),
      prefixRewrite: map['prefixRewrite'] == null ? null : (map['prefixRewrite'] as String).input(),
      responseCode: map['responseCode'] == null ? null : (HttpRouteRedirectResponseCode.fromValue(map['responseCode'] as String)).input(),
      stripQuery: map['stripQuery'] == null ? null : (map['stripQuery'] as bool).input(),
    );
  }
}

