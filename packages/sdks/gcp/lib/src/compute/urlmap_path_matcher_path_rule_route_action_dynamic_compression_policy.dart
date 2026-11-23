// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherPathRuleRouteActionDynamicCompressionPolicy {
  /// Compress text responses using Brotli or gzip compression, based on
  /// the client's Accept-Encoding header.
  /// Possible values are: `AUTOMATIC`, `DISABLED`.
  final pulumi.Input<String?>? compressionMode;

  /// Creates a new [URLMapPathMatcherPathRuleRouteActionDynamicCompressionPolicy].
  /// [compressionMode] Compress text responses using Brotli or gzip compression, based on
  const URLMapPathMatcherPathRuleRouteActionDynamicCompressionPolicy({
    this.compressionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionMode': ?compressionMode,
    };
  }

  factory URLMapPathMatcherPathRuleRouteActionDynamicCompressionPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherPathRuleRouteActionDynamicCompressionPolicy(
      compressionMode: (() { final guardedValue = map['compressionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
