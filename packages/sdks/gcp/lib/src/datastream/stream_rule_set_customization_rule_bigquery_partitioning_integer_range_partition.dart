// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition {
  /// The partitioning column.
  final pulumi.Input<String> column;
  /// The ending value for range partitioning (exclusive).
  final pulumi.Input<int> end;
  /// The interval of each range within the partition.
  final pulumi.Input<int> interval;
  /// The starting value for range partitioning (inclusive).
  final pulumi.Input<int> start;

  /// Creates a new [StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition].
  /// [column] The partitioning column.
  /// [end] The ending value for range partitioning (exclusive).
  /// [interval] The interval of each range within the partition.
  /// [start] The starting value for range partitioning (inclusive).
  StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition({
    required this.column,
    required this.end,
    required this.interval,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'end': end,
      'interval': interval,
      'start': start,
    };
  }

  factory StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition(
      column: pulumi.Input.fromValue(map['column'] as String),
      end: pulumi.Input.fromValue(map['end'] as int),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      start: pulumi.Input.fromValue(map['start'] as int),
    );
  }
}

