// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapDefaultRouteActionDynamicCompressionPolicy {
  /// Compress text responses using Brotli or gzip compression, based on
  /// the client's Accept-Encoding header.
  /// Possible values are: `AUTOMATIC`, `DISABLED`.
  final pulumi.Input<String?>? compressionMode;

  /// Creates a new [URLMapDefaultRouteActionDynamicCompressionPolicy].
  /// [compressionMode] Compress text responses using Brotli or gzip compression, based on
  const URLMapDefaultRouteActionDynamicCompressionPolicy({
    this.compressionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionMode': ?compressionMode,
    };
  }

  factory URLMapDefaultRouteActionDynamicCompressionPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapDefaultRouteActionDynamicCompressionPolicy(
      compressionMode: (() { final guardedValue = map['compressionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
