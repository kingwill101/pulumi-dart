// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionUrlMapDefaultRouteActionUrlRewrite {
  /// Before forwarding the request to the selected service, the request's host header is replaced with contents of hostRewrite.
  /// The value must be from 1 to 255 characters.
  final pulumi.Input<String?>? hostRewrite;
  /// Before forwarding the request to the selected backend service, the matching portion of the request's path is replaced by pathPrefixRewrite.
  /// The value must be from 1 to 1024 characters.
  final pulumi.Input<String?>? pathPrefixRewrite;

  /// Creates a new [RegionUrlMapDefaultRouteActionUrlRewrite].
  /// [hostRewrite] Before forwarding the request to the selected service, the request's host header is replaced with contents of hostRewrite.
  /// [pathPrefixRewrite] Before forwarding the request to the selected backend service, the matching portion of the request's path is replaced by pathPrefixRewrite.
  const RegionUrlMapDefaultRouteActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': ?hostRewrite,
      'pathPrefixRewrite': ?pathPrefixRewrite,
    };
  }

  factory RegionUrlMapDefaultRouteActionUrlRewrite.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapDefaultRouteActionUrlRewrite(
      hostRewrite: (() { final guardedValue = map['hostRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathPrefixRewrite: (() { final guardedValue = map['pathPrefixRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
