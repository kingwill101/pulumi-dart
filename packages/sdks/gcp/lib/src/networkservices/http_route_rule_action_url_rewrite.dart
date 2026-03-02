// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRouteRuleActionUrlRewrite {
  /// Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  final pulumi.Input<String>? hostRewrite;
  /// Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  final pulumi.Input<String>? pathPrefixRewrite;

  /// Creates a new [HttpRouteRuleActionUrlRewrite].
  /// [hostRewrite] Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  /// [pathPrefixRewrite] Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  HttpRouteRuleActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': ?hostRewrite,
      'pathPrefixRewrite': ?pathPrefixRewrite,
    };
  }

  factory HttpRouteRuleActionUrlRewrite.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionUrlRewrite(
      hostRewrite: map['hostRewrite'] == null ? null : (map['hostRewrite']! as String).input(),
      pathPrefixRewrite: map['pathPrefixRewrite'] == null ? null : (map['pathPrefixRewrite']! as String).input(),
    );
  }
}

