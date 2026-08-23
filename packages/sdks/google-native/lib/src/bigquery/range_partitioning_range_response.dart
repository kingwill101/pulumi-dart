// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [TrustedTester] [Required] Defines the ranges for range partitioning.
class RangePartitioningRangeResponse {
  /// [TrustedTester] [Required] The end of range partitioning, exclusive.
  final pulumi.Input<String> end;
  /// [TrustedTester] [Required] The width of each interval.
  final pulumi.Input<String> interval;
  /// [TrustedTester] [Required] The start of range partitioning, inclusive.
  final pulumi.Input<String> start;

  /// Creates a new [RangePartitioningRangeResponse].
  /// [end] [TrustedTester] [Required] The end of range partitioning, exclusive.
  /// [interval] [TrustedTester] [Required] The width of each interval.
  /// [start] [TrustedTester] [Required] The start of range partitioning, inclusive.
  const RangePartitioningRangeResponse({
    required this.end,
    required this.interval,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'interval': interval,
      'start': start,
    };
  }

  factory RangePartitioningRangeResponse.fromMap(Map<String, dynamic> map) {
    return RangePartitioningRangeResponse(
      end: pulumi.Input.fromValue(map['end'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}
