// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherPathRuleRouteActionCachePolicyDefaultTtl {
  /// Span of time that's a fraction of a second at nanosecond resolution.
  final pulumi.Input<int?>? nanos;
  /// Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  final pulumi.Input<String> seconds;

  /// Creates a new [URLMapPathMatcherPathRuleRouteActionCachePolicyDefaultTtl].
  /// [nanos] Span of time that's a fraction of a second at nanosecond resolution.
  /// [seconds] Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  const URLMapPathMatcherPathRuleRouteActionCachePolicyDefaultTtl({
    this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': seconds,
    };
  }

  factory URLMapPathMatcherPathRuleRouteActionCachePolicyDefaultTtl.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherPathRuleRouteActionCachePolicyDefaultTtl(
      nanos: (() { final guardedValue = map['nanos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      seconds: pulumi.Input.fromValue(map['seconds'] as String),
    );
  }
}
