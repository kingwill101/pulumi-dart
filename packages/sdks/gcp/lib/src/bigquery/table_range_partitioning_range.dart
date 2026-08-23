// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableRangePartitioningRange {
  /// End of the range partitioning, exclusive.
  final pulumi.Input<int> end;
  /// The width of each range within the partition.
  final pulumi.Input<int> interval;
  /// Start of the range partitioning, inclusive.
  final pulumi.Input<int> start;

  /// Creates a new [TableRangePartitioningRange].
  /// [end] End of the range partitioning, exclusive.
  /// [interval] The width of each range within the partition.
  /// [start] Start of the range partitioning, inclusive.
  const TableRangePartitioningRange({
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

  factory TableRangePartitioningRange.fromMap(Map<String, dynamic> map) {
    return TableRangePartitioningRange(
      end: pulumi.Input.fromValue(map['end'] as int),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      start: pulumi.Input.fromValue(map['start'] as int),
    );
  }
}
