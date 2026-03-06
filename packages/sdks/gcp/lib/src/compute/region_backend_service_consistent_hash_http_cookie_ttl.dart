// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceConsistentHashHttpCookieTtl {
  /// Span of time that's a fraction of a second at nanosecond
  /// resolution. Durations less than one second are represented
  /// with a 0 seconds field and a positive nanos field. Must
  /// be from 0 to 999,999,999 inclusive.
  final pulumi.Input<int>? nanos;
  /// Span of time at a resolution of a second.
  /// Must be from 0 to 315,576,000,000 inclusive.
  final pulumi.Input<int> seconds;

  /// Creates a new [RegionBackendServiceConsistentHashHttpCookieTtl].
  /// [nanos] Span of time that's a fraction of a second at nanosecond
  /// [seconds] Span of time at a resolution of a second.
  const RegionBackendServiceConsistentHashHttpCookieTtl({
    this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': seconds,
    };
  }

  factory RegionBackendServiceConsistentHashHttpCookieTtl.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceConsistentHashHttpCookieTtl(
      nanos: (() { final guardedValue = map['nanos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      seconds: pulumi.Input.fromValue(map['seconds'] as int),
    );
  }
}

