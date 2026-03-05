// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [TrustedTester] [Required] Defines the ranges for range partitioning.
class RangePartitioningRange {
  /// [TrustedTester] [Required] The end of range partitioning, exclusive.
  final pulumi.Input<String>? end;
  /// [TrustedTester] [Required] The width of each interval.
  final pulumi.Input<String>? interval;
  /// [TrustedTester] [Required] The start of range partitioning, inclusive.
  final pulumi.Input<String>? start;

  /// Creates a new [RangePartitioningRange].
  /// [end] [TrustedTester] [Required] The end of range partitioning, exclusive.
  /// [interval] [TrustedTester] [Required] The width of each interval.
  /// [start] [TrustedTester] [Required] The start of range partitioning, inclusive.
  RangePartitioningRange({
    this.end,
    this.interval,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'interval': ?interval,
      'start': ?start,
    };
  }

  factory RangePartitioningRange.fromMap(Map<String, dynamic> map) {
    return RangePartitioningRange(
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

