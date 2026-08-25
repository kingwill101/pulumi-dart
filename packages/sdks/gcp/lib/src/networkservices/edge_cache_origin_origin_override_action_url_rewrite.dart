// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheOriginOriginOverrideActionUrlRewrite {
  /// Prior to forwarding the request to the selected
  /// origin, the request's host header is replaced with
  /// contents of the hostRewrite.
  /// This value must be between 1 and 255 characters.
  final pulumi.Input<String?>? hostRewrite;

  /// Creates a new [EdgeCacheOriginOriginOverrideActionUrlRewrite].
  /// [hostRewrite] Prior to forwarding the request to the selected
  const EdgeCacheOriginOriginOverrideActionUrlRewrite({
    this.hostRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': ?hostRewrite,
    };
  }

  factory EdgeCacheOriginOriginOverrideActionUrlRewrite.fromMap(Map<String, dynamic> map) {
    return EdgeCacheOriginOriginOverrideActionUrlRewrite(
      hostRewrite: (() { final guardedValue = map['hostRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
