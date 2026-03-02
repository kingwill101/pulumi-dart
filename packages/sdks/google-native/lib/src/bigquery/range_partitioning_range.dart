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
      end: map['end'] == null ? null : (map['end']! as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as String).input(),
      start: map['start'] == null ? null : (map['start']! as String).input(),
    );
  }
}

