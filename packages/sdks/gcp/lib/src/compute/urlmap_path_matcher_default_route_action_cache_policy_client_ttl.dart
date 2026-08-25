// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherDefaultRouteActionCachePolicyClientTtl {
  /// Span of time that's a fraction of a second at nanosecond resolution.
  final pulumi.Input<int?>? nanos;
  /// Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  final pulumi.Input<String> seconds;

  /// Creates a new [URLMapPathMatcherDefaultRouteActionCachePolicyClientTtl].
  /// [nanos] Span of time that's a fraction of a second at nanosecond resolution.
  /// [seconds] Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  const URLMapPathMatcherDefaultRouteActionCachePolicyClientTtl({
    this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': seconds,
    };
  }

  factory URLMapPathMatcherDefaultRouteActionCachePolicyClientTtl.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherDefaultRouteActionCachePolicyClientTtl(
      nanos: (() { final guardedValue = map['nanos']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      seconds: pulumi.Input.fromValue(map['seconds'] as String),
    );
  }
}
