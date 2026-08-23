// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specification for modifying the URL of the request, prior to forwarding the request to the destination.
class HttpRouteURLRewriteResponse {
  /// Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  final pulumi.Input<String> hostRewrite;
  /// Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  final pulumi.Input<String> pathPrefixRewrite;

  /// Creates a new [HttpRouteURLRewriteResponse].
  /// [hostRewrite] Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  /// [pathPrefixRewrite] Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  const HttpRouteURLRewriteResponse({
    required this.hostRewrite,
    required this.pathPrefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': hostRewrite,
      'pathPrefixRewrite': pathPrefixRewrite,
    };
  }

  factory HttpRouteURLRewriteResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteURLRewriteResponse(
      hostRewrite: pulumi.Input.fromValue(map['hostRewrite'] as String),
      pathPrefixRewrite: pulumi.Input.fromValue(map['pathPrefixRewrite'] as String),
    );
  }
}
