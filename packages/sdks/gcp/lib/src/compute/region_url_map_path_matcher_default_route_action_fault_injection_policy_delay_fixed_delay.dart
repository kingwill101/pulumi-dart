// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelay {
  /// Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are
  /// represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive.
  final pulumi.Input<int>? nanos;

  /// Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  /// Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years
  final pulumi.Input<String>? seconds;

  /// Creates a new [RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelay].
  /// [nanos] Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are
  /// [seconds] Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelay({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nanos': ?nanos, 'seconds': ?seconds};
  }

  factory RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelay.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelay(
      nanos: (() {
        final guardedValue = map['nanos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      seconds: (() {
        final guardedValue = map['seconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
