// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specification for modifying the URL of the request, prior to forwarding the request to the destination.
class HttpRouteURLRewriteNetworkservicesV1beta1 {
  /// Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  final pulumi.Input<String>? hostRewrite;
  /// Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  final pulumi.Input<String>? pathPrefixRewrite;

  /// Creates a new [HttpRouteURLRewriteNetworkservicesV1beta1].
  /// [hostRewrite] Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  /// [pathPrefixRewrite] Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  const HttpRouteURLRewriteNetworkservicesV1beta1({
    this.hostRewrite,
    this.pathPrefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': ?hostRewrite,
      'pathPrefixRewrite': ?pathPrefixRewrite,
    };
  }

  factory HttpRouteURLRewriteNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteURLRewriteNetworkservicesV1beta1(
      hostRewrite: (() { final guardedValue = map['hostRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathPrefixRewrite: (() { final guardedValue = map['pathPrefixRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
