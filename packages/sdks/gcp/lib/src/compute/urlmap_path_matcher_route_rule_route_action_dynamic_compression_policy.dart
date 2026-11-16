// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherRouteRuleRouteActionDynamicCompressionPolicy {
  /// Compress text responses using Brotli or gzip compression, based on
  /// the client's Accept-Encoding header.
  /// Possible values are: `AUTOMATIC`, `DISABLED`.
  final pulumi.Input<String?>? compressionMode;

  /// Creates a new [URLMapPathMatcherRouteRuleRouteActionDynamicCompressionPolicy].
  /// [compressionMode] Compress text responses using Brotli or gzip compression, based on
  const URLMapPathMatcherRouteRuleRouteActionDynamicCompressionPolicy({
    this.compressionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionMode': ?compressionMode,
    };
  }

  factory URLMapPathMatcherRouteRuleRouteActionDynamicCompressionPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleRouteActionDynamicCompressionPolicy(
      compressionMode: (() { final guardedValue = map['compressionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
